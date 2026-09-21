import { useEffect, useRef, useState } from "react";
import {
  createMatch,
  fetchReview,
  openQuestion,
  startSuddenDeath,
  submitPlayer,
  waitJev,
} from "./api";
import { Arena } from "./screens/Arena";
import { ResultScreen } from "./screens/ResultScreen";
import { StartScreen } from "./screens/StartScreen";
import type { Choice, Difficulty, PublicQuestion, Review, Screen, Side } from "./types";

const BETWEEN_MS = 2500;

export function App() {
  const [screen, setScreen] = useState<Screen>("start");
  const [busy, setBusy] = useState(false);
  const [toast, setToast] = useState<string | null>(null);
  const [total, setTotal] = useState(10);
  const [question, setQuestion] = useState<PublicQuestion | null>(null);
  const [playerScore, setPlayerScore] = useState(0);
  const [jevScore, setJevScore] = useState(0);
  const [selected, setSelected] = useState<Choice | null>(null);
  const [playerLocked, setPlayerLocked] = useState(false);
  const [jevReady, setJevReady] = useState(false);
  const [first, setFirst] = useState<Side | null>(null);
  const [scorer, setScorer] = useState<Side | null>(null);
  const [playerPop, setPlayerPop] = useState(false);
  const [jevPop, setJevPop] = useState(false);
  const [boardKey, setBoardKey] = useState(0);
  const [review, setReview] = useState<Review | null>(null);
  const [difficulty, setDifficulty] = useState<Difficulty>("medium");

  const raceRef = useRef(0);
  const nextTimer = useRef<number | null>(null);
  const scoresRef = useRef({ player: 0, jev: 0 });
  const advancingRef = useRef(false);
  const matchIdRef = useRef<string | null>(null);
  const questionRef = useRef<PublicQuestion | null>(null);
  const totalRef = useRef(10);

  useEffect(() => {
    return () => {
      if (nextTimer.current) window.clearTimeout(nextTimer.current);
    };
  }, []);

  useEffect(() => {
    const onKey = (event: KeyboardEvent) => {
      if (screen !== "arena" || scorer || playerLocked) return;
      const map: Record<string, Choice> = {
        a: "A",
        b: "B",
        c: "C",
        d: "D",
        "1": "A",
        "2": "B",
        "3": "C",
        "4": "D",
      };
      const choice = map[event.key.toLowerCase()];
      if (choice) void pick(choice);
    };
    window.addEventListener("keydown", onKey);
    return () => window.removeEventListener("keydown", onKey);
  });

  async function start() {
    setBusy(true);
    setToast(null);
    raceRef.current += 1;
    advancingRef.current = false;
    if (nextTimer.current) {
      window.clearTimeout(nextTimer.current);
      nextTimer.current = null;
    }
    questionRef.current = null;
    setQuestion(null);
    setSelected(null);
    setPlayerLocked(false);
    setFirst(null);
    setScorer(null);
    setJevReady(false);
    try {
      const match = await createMatch(difficulty);
      scoresRef.current = { player: 0, jev: 0 };
      matchIdRef.current = match.matchId;
      totalRef.current = 10;
      setTotal(10);
      setPlayerScore(0);
      setJevScore(0);
      setReview(null);
      setScreen("arena");
      await beginRound(match.matchId, 0);
    } catch (error) {
      setToast(error instanceof Error ? error.message : "无法开局");
    } finally {
      setBusy(false);
    }
  }

  async function beginRound(id: string, index: number) {
    advancingRef.current = false;
    const token = ++raceRef.current;
    if (nextTimer.current) {
      window.clearTimeout(nextTimer.current);
      nextTimer.current = null;
    }
    setSelected(null);
    setPlayerLocked(false);
    setJevReady(false);
    setFirst(null);
    setScorer(null);
    setPlayerPop(false);
    setJevPop(false);
    setBoardKey((value) => value + 1);

    const opened = await openQuestion(id, index);
    if (token !== raceRef.current) return;
    questionRef.current = opened;
    setQuestion(opened);

    try {
      const settle = await waitJev(id, index);
      if (token !== raceRef.current) return;
      setJevReady(settle.jevReady);
      if (settle.resolved && settle.scorer) {
        applySettle(settle.scorer, settle.first);
      }
    } catch (error) {
      if (token !== raceRef.current) return;
      const replaced = error as Error & { question?: PublicQuestion; replaced?: boolean };
      setToast(replaced.message || "Jev 本题失败，已换题");
      if (replaced.question) {
        await beginRound(id, index);
      }
    }
  }

  async function pick(choice: Choice) {
    const id = matchIdRef.current;
    const current = questionRef.current;
    if (!id || !current || playerLocked || scorer) return;
    setSelected(choice);
    setPlayerLocked(true);
    const token = raceRef.current;
    try {
      const settle = await submitPlayer(id, current.index, choice);
      if (token !== raceRef.current) return;
      if (settle.resolved && settle.scorer) {
        applySettle(settle.scorer, settle.first);
      }
    } catch (error) {
      setPlayerLocked(false);
      setSelected(null);
      setToast(error instanceof Error ? error.message : "提交失败");
    }
  }

  function applySettle(side: Side, whoFirst: Side | null) {
    if (advancingRef.current) return;
    advancingRef.current = true;
    setFirst(whoFirst);
    setScorer(side);
    if (whoFirst === "jev") setJevReady(true);
    if (side === "player") {
      scoresRef.current.player += 1;
      setPlayerScore(scoresRef.current.player);
      setPlayerPop(true);
      window.setTimeout(() => setPlayerPop(false), 1200);
    } else {
      scoresRef.current.jev += 1;
      setJevScore(scoresRef.current.jev);
      setJevPop(true);
      window.setTimeout(() => setJevPop(false), 1200);
    }
    nextTimer.current = window.setTimeout(() => {
      void advance();
    }, BETWEEN_MS);
  }

  async function advance() {
    const id = matchIdRef.current;
    const current = questionRef.current;
    if (!id || !current) return;
    if (nextTimer.current) {
      window.clearTimeout(nextTimer.current);
      nextTimer.current = null;
    }
    const nextIndex = current.index + 1;
    if (nextIndex < totalRef.current) {
      await beginRound(id, nextIndex);
      return;
    }
    if (scoresRef.current.player === scoresRef.current.jev && totalRef.current === 10) {
      try {
        const extra = await startSuddenDeath(id);
        totalRef.current = 11;
        setTotal(11);
        setToast("平局加赛一题");
        await beginRound(id, extra.index);
        return;
      } catch {
        // fall through to review
      }
    }
    const data = await fetchReview(id);
    setReview(data);
    setScreen("result");
  }

  return (
    <div className="app">
      {toast ? <div className="toast">{toast}</div> : null}
      {screen === "start" ? (
        <StartScreen
          busy={busy}
          difficulty={difficulty}
          onDifficulty={setDifficulty}
          onStart={() => void start()}
        />
      ) : null}
      {screen === "arena" && question ? (
        <Arena
          question={question}
          total={total}
          playerScore={playerScore}
          jevScore={jevScore}
          playerLocked={playerLocked}
          jevReady={jevReady}
          disabled={Boolean(playerLocked || scorer)}
          selected={selected}
          first={first}
          scorer={scorer}
          playerPop={playerPop}
          jevPop={jevPop}
          boardKey={boardKey}
          onPick={(choice) => void pick(choice)}
          onNext={() => void advance()}
        />
      ) : null}
      {screen === "result" && review ? (
        <ResultScreen review={review} onAgain={() => void start()} />
      ) : null}
    </div>
  );
}
