ALTER TABLE auth.users
  ADD COLUMN locale VARCHAR(2) DEFAULT '' NOT NULL;

ALTER TABLE auth.users
  ALTER COLUMN locale DROP DEFAULT;

