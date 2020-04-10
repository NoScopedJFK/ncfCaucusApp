-- Initialize the database.
-- Drop any existing data and create empty tables.

DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS candidates;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE candidates (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  name TEXT NOT NULL,
  bio TEXT NOT NULL,
  issues TEXT NOT NULL
);