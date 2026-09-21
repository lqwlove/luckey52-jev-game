import type { Review } from "../types";
import { IconCheck, IconCross, IconJev, IconList, IconTrophy, IconUser } from "../icons";

type Props = {
  review: Review;
  onAgain: () => void;
};

export function ResultScreen({ review, onAgain }: Props) {
  const title =
    review.winner === "player" ? "你赢了" : review.winner === "jev" ? "Jev 赢了" : "平局";

  return (
    <section className="screen result">
      <header className="result-hero">
        <div style={{ textAlign: "center" }}>
          <IconUser />
          <div className="score">{review.playerScore}</div>
        </div>
        <div className="winner">
          <IconTrophy />
          <strong className="display" style={{ fontSize: 40 }}>
            {title}
          </strong>
          <span className="muted">下面才是每一题的答案</span>
        </div>
        <div style={{ textAlign: "center" }}>
          <IconJev />
          <div className="score">{review.jevScore}</div>
        </div>
      </header>

      <div className="review">
        {review.items.map((item) => (
          <article className="review-card" key={item.id} style={{ animationDelay: `${item.index * 40}ms` }}>
            <p className="kicker">第 {item.index + 1} 题 · {item.category}</p>
            <h3>{item.stem}</h3>
            <p>
              标准答案 {item.correct}. {item.options[item.correct]}
            </p>
            <div className="choice-line">
              <span className={`pill ${item.playerCorrect ? "good" : "bad"}`}>
                {item.playerCorrect ? <IconCheck /> : <IconCross />}
                你：{item.playerChoice ?? "未作答"}
              </span>
              <span className={`pill ${item.jevCorrect ? "good" : "bad"}`}>
                {item.jevCorrect ? <IconCheck /> : <IconCross />}
                Jev：{item.jevChoice ?? "未作答"}
                {item.jevConfidence != null
                  ? ` · 把握 ${Math.round(item.jevConfidence * 100)}%`
                  : ""}
              </span>
              <span className="pill">
                <IconList />
                本题得分：{item.scorer === "player" ? "你" : item.scorer === "jev" ? "Jev" : "作废"}
              </span>
            </div>
          </article>
        ))}
        <button className="cta again" type="button" onClick={onAgain}>
          再来一局
        </button>
      </div>
    </section>
  );
}
