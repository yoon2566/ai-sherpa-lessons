-- Apply once to each version's CLASSROOM_DB, never to the shared ARTWORK_DB.
-- Existing rooms retain their public board; the API explicitly defaults new rooms to class.
ALTER TABLE classrooms ADD COLUMN board_visibility TEXT NOT NULL DEFAULT 'public' CHECK (board_visibility IN ('class','public'));
CREATE TABLE IF NOT EXISTS classroom_works (
  id TEXT PRIMARY KEY,
  room_code TEXT NOT NULL,
  author TEXT NOT NULL,
  title TEXT NOT NULL,
  lesson TEXT NOT NULL,
  html TEXT NOT NULL,
  bytes INTEGER NOT NULL,
  created_at INTEGER NOT NULL
);
CREATE INDEX IF NOT EXISTS classroom_works_room_newest ON classroom_works(room_code,created_at DESC,id DESC);
CREATE INDEX IF NOT EXISTS classroom_works_newest ON classroom_works(created_at DESC);
