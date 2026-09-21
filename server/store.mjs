import { QUESTIONS, toPublicQuestion } from "./questions.mjs";

/** @typedef {import("./questions.mjs").Question} Question */

/** @type {Question[]} */
let bank = QUESTIONS;
let source = "local";

export async function initStore() {
  const url = process.env.DATABASE_URL?.trim();
  if (!url) {
    console.log(`question bank: ${bank.length} local`);
    return;
  }
  try {
    const { default: pg } = await import("pg");
    const client = new pg.Client({ connectionString: url });
    await client.connect();
    const { rows } = await client.query(
      `SELECT id, category, stem, option_a, option_b, option_c, option_d, correct
       FROM questions`,
    );
    await client.end();
    const loaded = rows.map(rowToQuestion).filter(Boolean);
    if (loaded.length < 10) {
      console.warn(`PostgreSQL returned ${loaded.length} questions, using local bank`);
      return;
    }
    bank = loaded;
    source = "postgres";
    console.log(`question bank: ${bank.length} from PostgreSQL`);
  } catch (error) {
    console.warn(`PostgreSQL unavailable (${error.message}), using local bank`);
  }
}

/** @param {number} n */
export function pickQuestionIds(n) {
  const ids = bank.map((q) => q.id);
  for (let i = ids.length - 1; i > 0; i -= 1) {
    const j = Math.floor(Math.random() * (i + 1));
    [ids[i], ids[j]] = [ids[j], ids[i]];
  }
  return ids.slice(0, n);
}

/** @param {string} id */
export function getQuestion(id) {
  const found = bank.find((q) => q.id === id);
  if (!found) throw new Error(`unknown question ${id}`);
  return found;
}

export function bankSource() {
  return source;
}

export { toPublicQuestion };

/** @param {Record<string, string>} row */
function rowToQuestion(row) {
  const correct = String(row.correct || "").toUpperCase();
  if (!["A", "B", "C", "D"].includes(correct)) return null;
  return {
    id: row.id,
    category: row.category,
    stem: row.stem,
    options: {
      A: row.option_a,
      B: row.option_b,
      C: row.option_c,
      D: row.option_d,
    },
    correct,
  };
}
