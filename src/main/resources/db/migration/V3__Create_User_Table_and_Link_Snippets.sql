-- Create the users table
CREATE TABLE IF NOT EXISTS users (
    id BIGSERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

SELECT
    column_name, data_type
FROM information_schema.columns
WHERE table_name = 'code_snippet'
ORDER BY ordinal_position;

SELECT pg_typeof(content), pg_typeof(title), pg_typeof(description)
FROM code_snippet
LIMIT 1;

-- Add user_id column to code_snippet
ALTER TABLE code_snippet ADD COLUMN IF NOT EXISTS user_id BIGINT;

-- Link code_snippet to users table
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'fk_user') THEN
        ALTER TABLE code_snippet 
            ADD CONSTRAINT fk_user 
            FOREIGN KEY (user_id) 
            REFERENCES users(id) 
            ON DELETE CASCADE;
    END IF;
END $$;

-- Optional: Create a default user and assign existing snippets to it
INSERT INTO users (username, email, password) VALUES 
('admin', 'admin@example.com', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi')
ON CONFLICT (username) DO NOTHING;

UPDATE code_snippet SET user_id = (SELECT id FROM users WHERE username = 'admin') WHERE user_id IS NULL;

-- Now make user_id NOT NULL
ALTER TABLE code_snippet ALTER COLUMN user_id SET NOT NULL;
