import { IconJev, IconUser } from "../icons";
import type { Difficulty } from "../types";

type Props = {
  busy: boolean;
  difficulty: Difficulty;
  onDifficulty: (value: Difficulty) => void;
  onStart: () => void;
};

const LEVELS: { id: Difficulty; label: string; hint: string }[] = [
  { id: "easy", label: "简单", hint: "" },
  { id: "medium", label: "中等", hint: "" },
  { id: "hard", label: "困难", hint: "" },
];

export function StartScreen({
  busy,
  difficulty,
  onDifficulty,
  onStart,
}: Props) {
  return (
    <section className="screen start">
      <div className="start-card">
        <h1>Jev 的挑战书</h1>
        <div className="versus-row">
          <div className="versus-chip">
            <IconUser />
          </div>
          <div className="vs-seal">VS</div>
          <div className="versus-chip right">
            <IconJev />
          </div>
        </div>
        <p>
          穿越回20年前的《幸运52》，《开心辞典》现场，和现在最快，最强的人工智能Jev比拼。
        </p>
        <div className="difficulty">
          {LEVELS.map((level) => (
            <button
              key={level.id}
              className={`diff-btn ${difficulty === level.id ? "on" : ""}`}
              type="button"
              disabled={busy}
              onClick={() => onDifficulty(level.id)}
            >
              <strong>{level.label}</strong>
              <span>{level.hint}</span>
            </button>
          ))}
        </div>
        <button className="cta" type="button" onClick={onStart} disabled={busy}>
          {busy ? "正在铺卷子…" : "挑战"}
        </button>
      </div>
    </section>
  );
}
