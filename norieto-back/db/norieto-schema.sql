CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
)

CREATE TABLE maps (
    id SERIAL PRIMARY KEY,
    json_data JSONB NOT NULL,
    map_owner NOT NULL REFERENCES users ON DELETE CASCADE
)