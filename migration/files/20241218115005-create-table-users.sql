-- +migrate Up
CREATE TABLE IF NOT EXISTS "user".users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMPTZ,
    created_by INT,
    updated_by INT,
    deleted_by INT
);

-- Create partial indexes for unique constraints
CREATE UNIQUE INDEX unique_username ON "user".users (username) WHERE (deleted_at IS NULL);
CREATE UNIQUE INDEX unique_email ON "user".users (email) WHERE (deleted_at IS NULL);

-- +migrate Down
DROP TABLE IF EXISTS "user".users;
