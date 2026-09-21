-- 服务器执行：
--   psql "$DATABASE_URL" -v ON_ERROR_STOP=1 -f sql/001_schema.sql

CREATE TABLE IF NOT EXISTS questions (
  id TEXT PRIMARY KEY,
  source TEXT NOT NULL,
  category TEXT NOT NULL,
  stem TEXT NOT NULL,
  option_a TEXT NOT NULL,
  option_b TEXT NOT NULL,
  option_c TEXT NOT NULL,
  option_d TEXT NOT NULL,
  correct CHAR(1) NOT NULL CHECK (correct IN ('A', 'B', 'C', 'D')),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS questions_category_idx ON questions (category);
CREATE INDEX IF NOT EXISTS questions_source_idx ON questions (source);
