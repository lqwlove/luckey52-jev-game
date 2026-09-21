const ENDPOINT = "https://api.typesafe.ai/v1/systemone";

/**
 * @param {{ category?: string, stem: string, options: Record<string, string>, correct: string }} question
 * @returns {Promise<{ choice: string, confidence: number, elapsedMs: number, mock: boolean }>}
 */
export async function askJev(question) {
  const started = Date.now();
  const key = process.env.TYPESAFE_API_KEY?.trim();
  if (!key) {
    return mockAnswer(question, started);
  }

  const response = await fetch(ENDPOINT, {
    method: "POST",
    headers: {
      Authorization: `Bearer ${key}`,
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      model: "jev-latest",
      state: {
        category: question.category,
        question: question.stem,
      },
      questions: {
        answer: {
          type: "choice",
          instructions:
            "这是一道中文知识竞赛题。根据常识、历史、地理或题面文字，为 `question` 选出最准确的一项。",
          criteria: {
            A: question.options.A,
            B: question.options.B,
            C: question.options.C,
            D: question.options.D,
          },
        },
      },
    }),
  });

  if (!response.ok) {
    const text = await response.text();
    throw new Error(`Jev HTTP ${response.status}: ${text.slice(0, 240)}`);
  }

  const payload = await response.json();
  const answer = payload?.answers?.answer;
  if (!answer?.choice) {
    throw new Error("Jev returned no choice");
  }

  return {
    choice: String(answer.choice),
    confidence: Number(answer.confidence ?? 0),
    elapsedMs: Date.now() - started,
    mock: false,
  };
}

/**
 * @param {{ options: Record<string, string>, correct: string }} question
 * @param {number} started
 */
async function mockAnswer(question, started) {
  const wait = 80 + Math.floor(Math.random() * 70);
  await new Promise((resolve) => setTimeout(resolve, wait));
  const keys = Object.keys(question.options);
  const choice =
    Math.random() < 0.72
      ? question.correct
      : keys[Math.floor(Math.random() * keys.length)];
  const right = choice === question.correct;
  return {
    choice,
    confidence: right ? 0.62 + Math.random() * 0.3 : 0.28 + Math.random() * 0.25,
    elapsedMs: Date.now() - started,
    mock: true,
  };
}
