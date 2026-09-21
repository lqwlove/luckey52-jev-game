import { readFileSync, writeFileSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";
import { LUCKY52 } from "./lucky52.mjs";

const root = join(dirname(fileURLToPath(import.meta.url)), "..");
const scribdPath =
  process.argv[2] ||
  "/Users/liqiaowei/.cursor/projects/Users-liqiaowei-ai-project-jev-game/agent-tools/d14cac3f-b0c8-49a8-90c7-282056b0dba4.txt";

const SKIP_NUMS = new Set([711]);

const OPTION_FIXES = {
  3: ["南海", "东海", "黄海", "渤海"],
  6: ["洞庭湖", "鄱阳湖", "太湖", "洪泽湖"],
  16: ["阿富汗", "哈萨克斯坦", "瑞士", "蒙古"],
  28: ["潼南金佛", "屏山大佛", "荣成大佛", "乐山大佛"],
  29: ["赵州桥", "湘子桥", "卢沟桥", "洛阳桥"],
  37: ["纽约", "华盛顿", "洛杉矶", "旧金山"],
  45: ["不贪污受贿", "一切行动听指挥", "不拿群众一针一线", "一切缴获要归公"],
  52: ["广田弘毅", "东条英机", "土肥原贤二", "松井石根"],
  64: ["微波武器", "激光武器", "X射线激光武器", "次声武器"],
  68: ["粟裕", "徐海东", "陈赓", "许世友"],
  71: ["西汉", "东汉", "三国", "南北朝"],
  74: ["四万吨", "五万吨", "六万吨", "十万吨"],
  93: ["夏", "商", "战国", "秦"],
  115: ["成康之治", "文景之治", "贞观之治", "康乾之治"],
  121: ["王懿荣", "刘鹗", "郭沫若", "顾颉刚"],
  126: ["挺而走险", "脍炙人口", "病入膏肓", "草菅人命"],
  137: ["美国", "英国", "日本", "中国"],
  138: ["万马齐喑", "不骄不躁", "按部就班", "变本加厉"],
  145: ["本草纲目", "黄帝内经", "千金方", "伤寒杂病论"],
  150: ["内眦褶", "铲形门齿", "黄皮肤", "青斑"],
  169: ["但丁", "达·芬奇", "米开朗琪罗", "拉斐尔"],
  171: ["战争与和平", "安娜·卡列尼娜", "复活", "悲惨世界"],
  181: ["丁玲", "冰心", "萧红", "茹志鹃"],
  184: ["田间", "郭沫若", "艾青", "臧克家"],
  189: ["泰戈尔", "罗曼·罗兰", "海明威", "鲁迅"],
  194: ["左芬", "蔡琰", "李清照", "苏蕙"],
  217: ["蛋白质", "脂肪", "糖", "维生素"],
  246: ["德国", "意大利", "阿根廷", "巴西"],
  247: ["200米", "跳高", "跳远", "1500米"],
  280: ["1、2、3", "1、2、4", "1、2、5", "2、4、6"],
  355: ["伯恩施坦", "卡拉扬", "小泽征尔", "梅达"],
  359: ["毕加索", "鲁本斯", "拉斐尔", "达·芬奇"],
  414: ["汉武帝", "汉成帝", "汉文帝", "汉景帝"],
  394: ["100万以上", "50-100万", "20-50万", "20万以下"],
  482: ["1百瓦/小时", "1千瓦/小时", "1瓦/小时", "10瓦/小时"],
  484: ["3个月", "6个月", "一年", "两年"],
  566: ["软件的科学", "科学管理和决策的科学", "绿色农业的科学", "轻工业科学"],
  595: ["帕格尼尼", "贝多芬", "海顿", "莫扎特"],
  649: ["2000年底", "2001年7月", "2004年底", "2005年初"],
};

function sqlStr(value) {
  return `'${String(value).replace(/'/g, "''")}'`;
}

function classify(stem) {
  if (/战[役斗争]|起义|朝代|皇帝|古代|史记|辛亥|抗战|抗美|建国|公元|世纪|年[代份]|唐朝|宋朝|明朝|清朝|汉朝|秦朝|元朝|春秋|战国|洋务|维新|条约|兵变|事变|解放/.test(stem)) {
    return "历史";
  }
  if (/(首都|城市|面积|海拔|纬度|经度|沙漠|平原|盆地|峡谷|瀑布|地理|哪个省|哪座城市|哪一个国家|四大洋|湖泊|河流|港口|山峰|岛屿|省份)/.test(stem)) {
    return "地理";
  }
  return "常识";
}

function normalizeStem(stem) {
  return stem.replace(/\s+/g, "").replace(/^\.+/, "").replace(/[:：?？,，、]+$/, "") + "？";
}

function cleanOpt(value) {
  return value.replace(/^[A-DＡ-Ｄ][.、．]\s*/, "").replace(/^[《<]|[》>]$/g, "").trim();
}

function splitOptions(raw, num) {
  if (OPTION_FIXES[num]) return OPTION_FIXES[num];
  let text = String(raw || "").replace(/\s+/g, " ").trim();
  if (!text || /[EeＥｅ][.、．]/.test(text) || /[FfＦｆ][.、．]/.test(text)) return null;

  const labeled = text.match(
    /^[AＡ][.、．]?\s*(.+?)\s+[BＢ][.、．]?\s*(.+?)\s+[CＣ][.、．]?\s*(.+?)\s+[DＤ][.、．]?\s*(.+)$/,
  );
  if (labeled) return labeled.slice(1, 5).map(cleanOpt);

  const books = [...text.matchAll(/[《<][^》>]+[》>]/g)].map((m) => m[0].replace(/[《<》>]/g, ""));
  if (books.length === 4) return books;
  if (books.length > 0 && books.length !== 4) return null;

  const spaced = text.split(" ").filter(Boolean).map(cleanOpt);
  const grouped = groupSpaced(spaced);
  if (grouped) return grouped;
  return null;
}

function groupSpaced(parts) {
  if (parts.length === 4) return parts;
  if (parts.length === 5 && /^[A-D]$/i.test(parts[4])) return parts.slice(0, 4);
  if (parts.length < 8 || parts.length % 4 !== 0) return null;
  const n = parts.length / 4;
  const groups = [0, 1, 2, 3].map((i) => parts.slice(i * n, (i + 1) * n));
  const suffixes = groups.map((g) => g[g.length - 1]);
  const prefixes = groups.map((g) => g[0]);
  if (new Set(suffixes).size === 1 || new Set(prefixes).size === 1) {
    return groups.map((g) => g.join(" "));
  }
  return null;
}

function parseScribd(source) {
  const flat = source
    .replace(/第\s*\d+\s*页\s*共\s*37\s*页\s*720\s*条百科知识/g, " ")
    .replace(/^#.*$/gm, " ")
    .replace(/##/g, " ")
    .replace(/\s+/g, " ")
    .trim();

  const marks = [];
  const re = /(\d{1,3})\.\s+/g;
  let match;
  while ((match = re.exec(flat))) {
    const num = Number(match[1]);
    if (num >= 1 && num <= 720) {
      marks.push({ num, start: match.index + match[0].length, tokenStart: match.index });
    }
  }

  const skipped = [];
  const byId = new Map();
  for (let i = 0; i < marks.length; i += 1) {
    const { num, start } = marks[i];
    if (SKIP_NUMS.has(num)) {
      if (!byId.has(num)) skipped.push({ num, reason: "junk" });
      continue;
    }
    const end = i + 1 < marks.length ? marks[i + 1].tokenStart : flat.length;
    const chunk = flat.slice(start, end).trim();
    const head = chunk.match(/^(.+?)\s*[:：]?\s*\(([A-D])\s*\)\s*(.*)$/);
    if (!head) {
      if (!byId.has(num)) skipped.push({ num, reason: "format", raw: chunk.slice(0, 80) });
      continue;
    }
    const stem = normalizeStem(head[1]);
    const correct = head[2];
    const options = splitOptions(head[3], num);
    if (!options) {
      if (!byId.has(num)) skipped.push({ num, reason: "options", raw: head[3].slice(0, 90) });
      continue;
    }
    if (byId.has(num)) continue;
    byId.set(num, {
      id: `kx${String(num).padStart(3, "0")}`,
      source: "开心辞典",
      category: classify(stem),
      stem,
      option_a: options[0],
      option_b: options[1],
      option_c: options[2],
      option_d: options[3],
      correct,
    });
  }
  return { items: [...byId.values()].sort((a, b) => a.id.localeCompare(b.id)), skipped };
}

function stemKey(stem) {
  return stem.replace(/[？?《》""''「」\s]/g, "");
}

function compactStem(stem) {
  return stemKey(stem).replace(/下列|我国|哪[一年个座种次项位]|是谁|是什么|位于|常用说法|传统上认为|常指/g, "");
}

function uniqueLucky(kaixin) {
  const overlap = [
    [/世界最高峰/, /海拔最高的山峰|珠穆朗玛/],
    [/面积最大的省级行政区/, /面积最大的省份/],
    [/最大的淡水湖/, /最大的淡水湖/],
    [/黄山位于/, /黄山在我国/],
    [/都江堰/, /都江堰/],
    [/中国共产党成立/, /中国共产党成立/],
    [/奥运会通常每隔几年/, /奥运会每四年/],
    [/第一座佛教寺院|白马寺/, /白马寺|第一座佛教寺院/],
    [/小提琴之王|帕格尼尼/, /小提琴之王|帕格尼尼/],
  ];
  return LUCKY52.filter((q) => {
    if (overlap.some(([luckyPat, kxPat]) => luckyPat.test(q.stem) && kaixin.some((k) => kxPat.test(k.stem)))) {
      return false;
    }
    const lucky = compactStem(q.stem);
    if (lucky.length < 8) return true;
    return !kaixin.some((k) => {
      const item = compactStem(k.stem);
      return item.length >= 8 && (item.includes(lucky) || lucky.includes(item));
    });
  });
}

function toSql(rows) {
  const statements = rows.map((row) => {
    return `INSERT INTO questions (id, source, category, stem, option_a, option_b, option_c, option_d, correct)
VALUES (${sqlStr(row.id)}, ${sqlStr(row.source)}, ${sqlStr(row.category)}, ${sqlStr(row.stem)}, ${sqlStr(row.option_a)}, ${sqlStr(row.option_b)}, ${sqlStr(row.option_c)}, ${sqlStr(row.option_d)}, ${sqlStr(row.correct)})
ON CONFLICT (id) DO UPDATE SET
  source = EXCLUDED.source,
  category = EXCLUDED.category,
  stem = EXCLUDED.stem,
  option_a = EXCLUDED.option_a,
  option_b = EXCLUDED.option_b,
  option_c = EXCLUDED.option_c,
  option_d = EXCLUDED.option_d,
  correct = EXCLUDED.correct;`;
  });
  return `-- 服务器执行：
--   psql "$DATABASE_URL" -v ON_ERROR_STOP=1 -f sql/002_seed.sql
-- 可重复执行。题目来自公开整理页的四选一摘录，不含版权书整本。

BEGIN;
${statements.join("\n\n")}
COMMIT;
`;
}

const extract = readFileSync(scribdPath, "utf8");
const { items, skipped } = parseScribd(extract);
const lucky = uniqueLucky(items);
const droppedLucky = LUCKY52.length - lucky.length;
const all = [...items, ...lucky];
writeFileSync(join(root, "sql/002_seed.sql"), toSql(all));
console.log(JSON.stringify({
  kaixin: items.length,
  first: items[0]?.id,
  last: items.at(-1)?.id,
  lucky52: lucky.length,
  droppedLucky,
  total: all.length,
  skippedCount: new Set(skipped.map((s) => s.num)).size,
  skipped: [...new Set(skipped.map((s) => `${s.num}:${s.reason}`))],
  luckyIds: lucky.map((q) => q.id),
}, null, 2));
