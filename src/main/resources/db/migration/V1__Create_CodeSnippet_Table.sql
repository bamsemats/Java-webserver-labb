CREATE TABLE code_snippet (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description VARCHAR(500) NOT NULL,
    content TEXT NOT NULL,
    created_at TIMESTAMP,
    language VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL
);
