import type { Choice, PublicQuestion, Side } from "../types";
import {
  IconBolt,
  IconCheck,
  IconCross,
  IconJev,
  IconLock,
  IconPulse,
  IconUser,
} from "../icons";

type Props = {
  question: PublicQuestion;
  total: number;
  playerScore: number;
  jevScore: number;
  playerLocked: boolean;
  jevReady: boolean;
  disabled: boolean;
  selected: Choice | null;
  first: Side | null;
  scorer: Side | null;
  playerPop: boolean;
  jevPop: boolean;
  boardKey: number;
  onPick: (choice: Choice) => void;
  onNext: () => void;
};

const KEYS: Choice[] = ["A", "B", "C", "D"];

function sideCopy(side: Side, locked: boolean, first: Side | null, scorer: Side | null) {
  if (scorer) {
    if (first && first !== scorer && first === side) {
      return { text: "答错了", thinking: false, miss: true, win: false };
    }
    if (scorer === side) {
      return { text: "得分", thinking: false, miss: false, win: true };
    }
    return { text: "抢答中", thinking: false, miss: false, win: false };
  }
  return {
    text: locked ? "已锁定" : "抢答中",
    thinking: !locked,
    miss: false,
    win: false,
  };
}

export function Arena({
  question,
  total,
  playerScore,
  jevScore,
  playerLocked,
  jevReady,
  disabled,
  selected,
  first,
  scorer,
  playerPop,
  jevPop,
  boardKey,
  onPick,
  onNext,
}: Props) {
  const player = sideCopy("player", playerLocked, first, scorer);
  const jev = sideCopy("jev", jevReady, first, scorer);
  const miss = Boolean(first && scorer && first !== scorer);

  return (
    <section className="screen arena">
      <header className="topbar">
        <span className="badge">
          <IconBolt />
          第 {question.index + 1} / {total} 题
        </span>
        <div className="vs-badge">VS</div>
        <span className="badge" style={{ justifySelf: "end" }}>
          {question.category} · 先对得分
        </span>
      </header>

      <div className="columns">
        <aside className={`side player ${player.win ? "flash" : ""} ${player.miss ? "miss" : ""}`}>
          <div className="avatar">
            <IconUser />
          </div>
          <h2>你</h2>
          <div className={`score-wrap ${playerPop ? "pop" : ""}`}>
            <div className={`score ${playerPop ? "pop" : ""}`}>{playerScore}</div>
            {playerPop ? <span className="score-plus">+1</span> : null}
          </div>
          <div className={`status ${player.thinking ? "thinking" : ""} ${player.miss ? "miss" : ""} ${player.win ? "win" : ""}`}>
            {player.miss ? <IconCross /> : player.thinking ? <IconPulse /> : player.win ? <IconCheck /> : <IconLock />}
            {player.text}
          </div>
        </aside>

        <div className="board-wrap">
          <article className="board quiz" key={boardKey}>
            <div className="passage">
              <p className="category-tag">{question.category}</p>
              <p className="stem">{question.stem}</p>
            </div>
            <div className="options">
              {KEYS.map((key) => (
                <button
                  key={key}
                  className={`option ${selected === key ? "locked" : ""} ${
                    selected && selected !== key ? "dim" : ""
                  }`}
                  type="button"
                  disabled={disabled}
                  onClick={() => onPick(key)}
                >
                  <span className="key">{key}</span>
                  <span>{question.options[key]}</span>
                  {selected === key ? <IconCheck /> : <span />}
                </button>
              ))}
            </div>
          </article>

          {scorer && first ? (
            <>
              <div className={`score-banner ${first} ${miss ? "miss" : "hit"}`}>
                {miss ? <IconCross /> : <IconCheck />}
                {first === "player" ? "你" : "Jev"}
                {miss ? "答错了" : "答对了"}
              </div>
              <button className="next-btn" type="button" onClick={onNext}>
                下一题
              </button>
            </>
          ) : null}
        </div>

        <aside className={`side jev ${jev.win ? "flash" : ""} ${jev.miss ? "miss" : ""}`}>
          <div className="avatar">
            <IconJev />
          </div>
          <h2>Jev</h2>
          <div className={`score-wrap ${jevPop ? "pop" : ""}`}>
            <div className={`score ${jevPop ? "pop" : ""}`}>{jevScore}</div>
            {jevPop ? <span className="score-plus">+1</span> : null}
          </div>
          <div className={`status ${jev.thinking ? "thinking" : ""} ${jev.miss ? "miss" : ""} ${jev.win ? "win" : ""}`}>
            {jev.miss ? <IconCross /> : jev.thinking ? <IconPulse /> : jev.win ? <IconCheck /> : <IconLock />}
            {jev.text}
          </div>
        </aside>
      </div>
    </section>
  );
}
