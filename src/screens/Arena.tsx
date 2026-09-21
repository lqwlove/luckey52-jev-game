import type { Choice, PublicQuestion, Side } from "../types";
import {
  IconBolt,
  IconCheck,
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
  jevThinking: boolean;
  jevReady: boolean;
  jevRemain: number;
  disabled: boolean;
  selected: Choice | null;
  scorer: Side | null;
  playerPop: boolean;
  jevPop: boolean;
  jevFlash: boolean;
  boardKey: number;
  onPick: (choice: Choice) => void;
  onNext: () => void;
};

const KEYS: Choice[] = ["A", "B", "C", "D"];

export function Arena({
  question,
  total,
  playerScore,
  jevScore,
  playerLocked,
  jevThinking,
  jevReady,
  jevRemain,
  disabled,
  selected,
  scorer,
  playerPop,
  jevPop,
  jevFlash,
  boardKey,
  onPick,
  onNext,
}: Props) {
  const remainSec = Math.max(0, Math.ceil(jevRemain / 1000));

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
        <aside className={`side player ${scorer === "player" ? "flash" : ""}`}>
          <div className="avatar">
            <IconUser />
          </div>
          <h2>你</h2>
          <div className={`score ${playerPop ? "pop" : ""}`}>{playerScore}</div>
          <div className="status">
            {playerLocked ? <IconLock /> : <IconPulse />}
            {playerLocked ? "已锁定" : scorer === "player" ? "本题得分" : "抢答中"}
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

          {scorer ? (
            <>
              <div className={`score-banner ${scorer}`}>
                本题：{scorer === "player" ? "你" : "Jev"}
              </div>
              <div className={`particle ${scorer === "player" ? "left" : "right"}`}>+1</div>
              <button className="next-btn" type="button" onClick={onNext}>
                下一题
              </button>
            </>
          ) : null}
        </div>

        <aside className={`side jev ${jevFlash ? "flash" : ""}`}>
          <div className="avatar">
            <IconJev />
          </div>
          <h2>Jev</h2>
          <div className={`score ${jevPop ? "pop" : ""}`}>{jevScore}</div>
          <div className={`status ${jevThinking ? "thinking" : ""}`}>
            {jevThinking ? <IconPulse /> : <IconLock />}
            {jevThinking
              ? remainSec > 0
                ? `还有 ${remainSec} 秒`
                : "判断中"
              : jevReady || scorer
                ? "已作答"
                : "待发问"}
          </div>
        </aside>
      </div>
    </section>
  );
}
