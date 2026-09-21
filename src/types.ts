export type Choice = "A" | "B" | "C" | "D";
export type Side = "player" | "jev";
export type Screen = "start" | "arena" | "result";
export type Difficulty = "easy" | "medium" | "hard";
export type Category = "常识" | "脑筋急转弯" | "历史" | "地理";

export type PublicQuestion = {
  index: number;
  id: string;
  category: Category;
  stem: string;
  options: Record<Choice, string>;
  delayMs?: number;
};

export type Settle = {
  resolved: boolean;
  first: Side | null;
  scorer: Side | null;
  playerLocked: boolean;
  jevReady: boolean;
};

export type ReviewItem = {
  index: number;
  id: string;
  category: Category;
  stem: string;
  options: Record<Choice, string>;
  correct: Choice;
  playerChoice: Choice | null;
  jevChoice: Choice | null;
  jevConfidence: number | null;
  playerCorrect: boolean;
  jevCorrect: boolean;
  first: Side | null;
  scorer: Side | null;
  voided: boolean;
};

export type Review = {
  playerScore: number;
  jevScore: number;
  winner: Side | "tie";
  items: ReviewItem[];
};
