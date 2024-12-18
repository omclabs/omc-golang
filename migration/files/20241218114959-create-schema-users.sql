-- +migrate Up
CREATE SCHEMA IF NOT EXISTS "user";
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
-- +migrate Down
DROP SCHEMA IF EXISTS "user";
DROP EXTENSION IF EXISTS "uuid-ossp";
