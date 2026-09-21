import { IconJev, IconUser } from "../icons";
import type { Difficulty } from "../types";

type Props = {
  busy: boolean;
  difficulty: Difficulty;
  onDifficulty: (value: Difficulty) => void;
  onStart: () => void;
};

const LEVELS: { id: Difficulty; label: string; hint: string }[] = [
  { id: "easy", label: "简单", hint: "Jev 晚 5 秒" },
  { id: "medium", label: "中等", hint: "Jev 晚 3 秒" },
  { id: "hard", label: "困难", hint: "Jev 晚 1 秒" },
];

export function StartScreen({ busy, difficulty, onDifficulty, onStart }: Props) {
  return (
    <section className="screen start">
      <div className="start-card">
        <p className="kicker">午后纸上擂台</p>
        <h1>和 Jev 抢答</h1>
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
          十道短选择题，像《幸运52》那样听完就能抢。谁先提交且答对，谁拿分；抢错则分送给对方。
          题与题之间只看谁得分，赛后再翻答案。
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
          {busy ? "正在铺卷子…" : "开始对局"}
        </button>
      </div>
    </section>
  );
}
