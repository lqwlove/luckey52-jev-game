import { existsSync, readFileSync, readdirSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";
import pg from "pg";

const root = join(dirname(fileURLToPath(import.meta.url)), "..");
const sqlDir = join(root, "sql");

loadEnv();

const url = process.env.DATABASE_URL?.trim();
if (!url) {
  console.error("缺少 DATABASE_URL。Docker Postgres 示例：postgres://用户:密码@127.0.0.1:5432/jev_game");
  process.exit(1);
}

const files = readdirSync(sqlDir)
  .filter((name) => /^\d+_.+\.sql$/.test(name))
  .sort();

if (!files.length) {
  console.error(`没有找到 ${sqlDir}/*.sql`);
  process.exit(1);
}

const client = new pg.Client({ connectionString: url });
await client.connect();

try {
  await client.query(`
    CREATE TABLE IF NOT EXISTS schema_migrations (
      id TEXT PRIMARY KEY,
      applied_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
    )
  `);

  const applied = new Set(
    (await client.query("SELECT id FROM schema_migrations")).rows.map((row) => row.id),
  );

  for (const name of files) {
    if (applied.has(name)) {
      console.log(`skip  ${name}`);
      continue;
    }
    const body = stripTransaction(readFileSync(join(sqlDir, name), "utf8"));
    console.log(`apply ${name}`);
    await client.query("BEGIN");
    try {
      for (const statement of splitStatements(body)) {
        await client.query(statement);
      }
      await client.query("INSERT INTO schema_migrations (id) VALUES ($1)", [name]);
      await client.query("COMMIT");
    } catch (error) {
      await client.query("ROLLBACK");
      throw error;
    }
  }
  console.log("migrate ok");
} finally {
  await client.end();
}

function stripTransaction(sql) {
  return sql
    .replace(/^\s*BEGIN\s*;/gim, "")
    .replace(/^\s*COMMIT\s*;/gim, "")
    .trim();
}

function splitStatements(sql) {
  const statements = [];
  let current = "";
  let inSingle = false;
  for (let i = 0; i < sql.length; i += 1) {
    const ch = sql[i];
    if (ch === "'" && inSingle && sql[i + 1] === "'") {
      current += "''";
      i += 1;
      continue;
    }
    if (ch === "'") {
      inSingle = !inSingle;
      current += ch;
      continue;
    }
    if (ch === ";" && !inSingle) {
      const stmt = current.trim();
      if (stmt && !stmt.startsWith("--")) statements.push(stmt);
      current = "";
      continue;
    }
    current += ch;
  }
  const tail = current.trim();
  if (tail) statements.push(tail);
  return statements.filter((stmt) => !/^--/.test(stmt) && stmt.length > 0);
}

function loadEnv() {
  const envPath = join(root, ".env");
  if (!existsSync(envPath)) return;
  for (const line of readFileSync(envPath, "utf8").split("\n")) {
    const trimmed = line.trim();
    if (!trimmed || trimmed.startsWith("#")) continue;
    const eq = trimmed.indexOf("=");
    if (eq < 0) continue;
    const key = trimmed.slice(0, eq).trim();
    const value = trimmed.slice(eq + 1).trim();
    if (!(key in process.env)) process.env[key] = value;
  }
}
