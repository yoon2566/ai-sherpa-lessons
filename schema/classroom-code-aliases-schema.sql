-- Apply to each Dino 2/3 CLASSROOM_DB. No public artwork data is rewritten.
CREATE TABLE IF NOT EXISTS classroom_code_aliases (
  old_code TEXT PRIMARY KEY CHECK(length(old_code)=6),
  new_code TEXT NOT NULL CHECK(length(new_code)=6 AND new_code NOT GLOB '*[^0-9]*'),
  migrated_at INTEGER NOT NULL
);
CREATE INDEX IF NOT EXISTS classroom_code_aliases_new ON classroom_code_aliases(new_code);
