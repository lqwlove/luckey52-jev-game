import type { Choice, Difficulty, PublicQuestion, Review, Settle } from "./types";

async function request<T>(path: string, init?: RequestInit): Promise<T> {
  const response = await fetch(path, {
    ...init,
    headers: {
      "Content-Type": "application/json",
      ...(init?.headers ?? {}),
    },
  });
  const payload = await response.json().catch(() => ({}));
  if (!response.ok) {
    const error = new Error(payload.error || `请求失败 ${response.status}`);
    Object.assign(error, payload);
    throw error;
  }
  return payload as T;
}

export function createMatch(difficulty: Difficulty) {
  return request<{
    matchId: string;
    mock: boolean;
    difficulty: Difficulty;
    delayMs: number;
    total: number;
    questions: PublicQuestion[];
  }>("/api/match", { method: "POST", body: JSON.stringify({ difficulty }) });
}

export function openQuestion(matchId: string, index: number) {
  return request<PublicQuestion>(`/api/match/${matchId}/open`, {
    method: "POST",
    body: JSON.stringify({ index }),
  });
}

export function waitJev(matchId: string, index: number) {
  return request<Settle>(`/api/match/${matchId}/jev`, {
    method: "POST",
    body: JSON.stringify({ index }),
  });
}

export function submitPlayer(matchId: string, index: number, choice: Choice) {
  return request<Settle>(`/api/match/${matchId}/player`, {
    method: "POST",
    body: JSON.stringify({ index, choice }),
  });
}

export function startSuddenDeath(matchId: string) {
  return request<PublicQuestion>(`/api/match/${matchId}/sudden-death`, {
    method: "POST",
  });
}

export function fetchReview(matchId: string) {
  return request<Review>(`/api/match/${matchId}/review`);
}

export function fetchHealth() {
  return request<{ ok: boolean; jev: "live" | "mock" }>("/api/health");
}
