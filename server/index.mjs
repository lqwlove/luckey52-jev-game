import { createServer } from "node:http";
import { readFileSync, existsSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";
import express from "express";
import { askJev } from "./jev.mjs";
import { bankSource, getQuestion, initStore, pickQuestionIds, toPublicQuestion } from "./store.mjs";

loadEnv();

const PORT = Number(process.env.PORT || 8787);
const DELAYS = { easy: 5000, medium: 3000, hard: 1000 };
const app = express();
app.use(express.json());

/** @type {Map<string, Match>} */
const matches = new Map();

/**
 * @typedef {Object} Round
 * @property {string} qid
 * @property {number | null} openedAt
 * @property {Promise<any> | null} jevJob
 * @property {{ choice: string, confidence: number, elapsedMs: number, mock: boolean, at: number } | null} jev
 * @property {{ choice: string, at: number } | null} player
 * @property {'player' | 'jev' | null} first
 * @property {'player' | 'jev' | null} scorer
 * @property {boolean} playerCorrect
 * @property {boolean} jevCorrect
 * @property {boolean} resolved
 * @property {boolean} voided
 */

/**
 * @typedef {Object} Match
 * @property {string} id
 * @property {string[]} extras
 * @property {Round[]} rounds
 * @property {boolean} mock
 * @property {'easy' | 'medium' | 'hard'} difficulty
 * @property {number} delayMs
 */

app.get("/api/health", (_req, res) => {
  res.json({
    ok: true,
    jev: process.env.TYPESAFE_API_KEY?.trim() ? "live" : "mock",
    questions: bankSource(),
  });
});

app.post("/api/match", (req, res) => {
  const difficulty = parseDifficulty(req.body?.difficulty);
  const ids = pickQuestionIds(12);
  const match = {
    id: crypto.randomUUID(),
    extras: ids.slice(10),
    rounds: ids.slice(0, 10).map((qid) => emptyRound(qid)),
    mock: !process.env.TYPESAFE_API_KEY?.trim(),
    difficulty,
    delayMs: DELAYS[difficulty],
  };
  matches.set(match.id, match);
  res.json({
    matchId: match.id,
    mock: match.mock,
    difficulty: match.difficulty,
    delayMs: match.delayMs,
    total: match.rounds.length,
    questions: match.rounds.map((round, index) => ({
      index,
      ...toPublicQuestion(getQuestion(round.qid)),
    })),
  });
});

app.post("/api/match/:id/open", (req, res) => {
  const match = matches.get(req.params.id);
  const index = Number(req.body?.index);
  const round = match?.rounds[index];
  if (!match || !round) {
    res.status(404).json({ error: "对局或题目不存在" });
    return;
  }
  if (!round.openedAt) round.openedAt = Date.now();
  startJev(match, round);
  res.json({
    index,
    delayMs: match.delayMs,
    ...toPublicQuestion(getQuestion(round.qid)),
  });
});

app.post("/api/match/:id/jev", async (req, res) => {
  const match = matches.get(req.params.id);
  const index = Number(req.body?.index);
  const round = match?.rounds[index];
  if (!match || !round) {
    res.status(404).json({ error: "对局或题目不存在" });
    return;
  }

  startJev(match, round);
  try {
    await round.jevJob;
  } catch (error) {
    const replaced = replaceRound(match, index);
    res.status(503).json({
      error: "Jev 本题作废，已换题",
      replaced: Boolean(replaced),
      question: replaced
        ? { index, ...toPublicQuestion(getQuestion(replaced.qid)) }
        : null,
      detail: error instanceof Error ? error.message : "unknown",
    });
    return;
  }

  settleIfNeeded(round);
  res.json(publicSettle(round));
});

app.post("/api/match/:id/player", (req, res) => {
  const match = matches.get(req.params.id);
  const index = Number(req.body?.index);
  const choice = String(req.body?.choice || "");
  const round = match?.rounds[index];
  if (!match || !round) {
    res.status(404).json({ error: "对局或题目不存在" });
    return;
  }
  if (!["A", "B", "C", "D"].includes(choice)) {
    res.status(400).json({ error: "选项无效" });
    return;
  }

  if (!round.first) {
    round.player = { choice, at: Date.now() };
    round.first = "player";
    settleIfNeeded(round);
  } else if (!round.player) {
    round.player = { choice, at: Date.now() };
  }

  res.json(publicSettle(round));
});

app.post("/api/match/:id/sudden-death", (req, res) => {
  const match = matches.get(req.params.id);
  if (!match) {
    res.status(404).json({ error: "对局不存在" });
    return;
  }
  if (match.rounds.length > 10) {
    const last = match.rounds.length - 1;
    res.json({
      index: last,
      ...toPublicQuestion(getQuestion(match.rounds[last].qid)),
    });
    return;
  }
  const extraId = match.extras.shift();
  if (!extraId) {
    res.status(409).json({ error: "没有加赛题目了" });
    return;
  }
  match.rounds.push(emptyRound(extraId));
  const index = match.rounds.length - 1;
  res.json({
    index,
    ...toPublicQuestion(getQuestion(extraId)),
  });
});

app.get("/api/match/:id/review", (req, res) => {
  const match = matches.get(req.params.id);
  if (!match) {
    res.status(404).json({ error: "对局不存在" });
    return;
  }

  let playerScore = 0;
  let jevScore = 0;
  const items = match.rounds.map((round, index) => {
    const question = getQuestion(round.qid);
    if (round.scorer === "player") playerScore += 1;
    if (round.scorer === "jev") jevScore += 1;
    return {
      index,
      id: question.id,
      category: question.category,
      stem: question.stem,
      options: question.options,
      correct: question.correct,
      playerChoice: round.player?.choice ?? null,
      jevChoice: round.jev?.choice ?? null,
      jevConfidence: round.jev?.confidence ?? null,
      playerCorrect: round.player ? question.correct === round.player.choice : false,
      jevCorrect: round.jev ? question.correct === round.jev.choice : false,
      first: round.first,
      scorer: round.scorer,
      voided: round.voided,
    };
  });

  let winner = "tie";
  if (playerScore > jevScore) winner = "player";
  if (jevScore > playerScore) winner = "jev";

  res.json({ playerScore, jevScore, winner, items });
});

const __dirname = dirname(fileURLToPath(import.meta.url));
const distDir = join(__dirname, "..", "dist");
if (existsSync(distDir)) {
  app.use(express.static(distDir));
  app.get(/.*/, (_req, res) => {
    res.sendFile(join(distDir, "index.html"));
  });
}

await initStore();
createServer(app).listen(PORT, () => {
  const mode = process.env.TYPESAFE_API_KEY?.trim() ? "live Jev" : "mock Jev";
  console.log(`jev-game server on http://127.0.0.1:${PORT} (${mode})`);
});

/** @param {string} qid */
function emptyRound(qid) {
  return {
    qid,
    openedAt: null,
    jevJob: null,
    jev: null,
    player: null,
    first: null,
    scorer: null,
    playerCorrect: false,
    jevCorrect: false,
    resolved: false,
    voided: false,
  };
}

/** @param {Match} match @param {Round} round */
function startJev(match, round) {
  if (round.jevJob) return;
  if (!round.openedAt) round.openedAt = Date.now();
  const question = getQuestion(round.qid);
  round.jevJob = askJev(question)
    .then(async (result) => {
      round.jev = { ...result, at: Date.now() };
      match.mock = match.mock || result.mock;
      const remain = match.delayMs - (Date.now() - round.openedAt);
      if (remain > 0) {
        await new Promise((resolve) => setTimeout(resolve, remain));
      }
      if (!round.first) {
        round.first = "jev";
        round.jev.at = Date.now();
        settleIfNeeded(round);
      }
      return result;
    })
    .catch((error) => {
      round.voided = true;
      throw error;
    });
}

/** @param {unknown} value */
function parseDifficulty(value) {
  if (value === "easy" || value === "medium" || value === "hard") return value;
  return "medium";
}

/** @param {Round} round */
function settleIfNeeded(round) {
  if (round.resolved || !round.first) return;
  const question = getQuestion(round.qid);
  if (round.first === "player" && round.player) {
    const right = round.player.choice === question.correct;
    round.playerCorrect = right;
    round.scorer = right ? "player" : "jev";
    round.resolved = true;
  }
  if (round.first === "jev" && round.jev) {
    const right = round.jev.choice === question.correct;
    round.jevCorrect = right;
    round.scorer = right ? "jev" : "player";
    round.resolved = true;
  }
  if (round.player) {
    round.playerCorrect = round.player.choice === question.correct;
  }
  if (round.jev) {
    round.jevCorrect = round.jev.choice === question.correct;
  }
}

/** @param {Round} round */
function publicSettle(round) {
  return {
    resolved: round.resolved,
    first: round.first,
    scorer: round.scorer,
    playerLocked: Boolean(round.player),
    jevReady: Boolean(round.jev),
  };
}

/** @param {Match} match @param {number} index */
function replaceRound(match, index) {
  const extraId = match.extras.shift();
  if (!extraId) return null;
  match.rounds[index] = emptyRound(extraId);
  return match.rounds[index];
}

function loadEnv() {
  const envPath = join(dirname(fileURLToPath(import.meta.url)), "..", ".env");
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
