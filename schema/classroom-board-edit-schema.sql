-- Apply once to each CLASSROOM_DB after classroom-board-schema.sql.
ALTER TABLE classroom_works ADD COLUMN edit_secret_hash TEXT;
ALTER TABLE classroom_works ADD COLUMN revision INTEGER NOT NULL DEFAULT 1;
ALTER TABLE classroom_works ADD COLUMN updated_at INTEGER NOT NULL DEFAULT 0;
ALTER TABLE classroom_works ADD COLUMN deleted_at INTEGER;
ALTER TABLE classroom_works ADD COLUMN public_sync_pending INTEGER NOT NULL DEFAULT 0;
CREATE INDEX IF NOT EXISTS classroom_works_pending ON classroom_works(room_code,public_sync_pending,updated_at);
