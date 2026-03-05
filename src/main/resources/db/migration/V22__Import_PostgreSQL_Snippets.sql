-- V22__Import_PostgreSQL_Snippets.sql

INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('PostgreSQL: Upsert (On Conflict)', 'Insert or update on primary key collision.', 'INSERT INTO settings (key, value) 
VALUES (''theme'', ''dark'')
ON CONFLICT (key) DO UPDATE SET value = EXCLUDED.value;', 'PostgreSQL', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PostgreSQL: JSONB Containment', 'Querying JSON data using indexes.', 'SELECT * FROM events 
WHERE metadata @> ''{"type": "signup"}'';', 'PostgreSQL', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PostgreSQL: Generate Series', 'Creating mock data or ranges.', 'SELECT * FROM generate_series(1, 10);
SELECT generate_series(now(), now() + interval ''1 week'', ''1 day'');', 'PostgreSQL', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PostgreSQL: Full Text Search', 'Basic indexing and searching.', 'SELECT title 
FROM snippets 
WHERE to_tsvector(''english'', content) @@ to_tsquery(''english'', ''postgres'');', 'PostgreSQL', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PostgreSQL: Distinct On', 'Retrieving the first row per group.', 'SELECT DISTINCT ON (user_id) * 
FROM logins 
ORDER BY user_id, created_at DESC;', 'PostgreSQL', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PostgreSQL: Create View', 'Persisting complex queries.', 'CREATE VIEW public_snippets AS
SELECT id, title, content FROM code_snippet WHERE is_public = true;', 'PostgreSQL', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PostgreSQL: Function Definition', 'Basic stored procedures.', 'CREATE OR REPLACE FUNCTION get_count(u_id bigint) 
RETURNS bigint AS $$
BEGIN
    RETURN (SELECT count(*) FROM code_snippet WHERE user_id = u_id);
END;
$$ LANGUAGE plpgsql;', 'PostgreSQL', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PostgreSQL: Trigger - Update Timestamp', 'Auto-updating created_at/updated_at.', 'CREATE TRIGGER set_timestamp
BEFORE UPDATE ON code_snippet
FOR EACH ROW
EXECUTE FUNCTION trigger_set_timestamp();', 'PostgreSQL', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PostgreSQL: Array Type Usage', 'Storing and querying arrays.', 'SELECT name FROM users WHERE ''admin'' = ANY(roles);', 'PostgreSQL', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PostgreSQL: Explain Analyze', 'Query performance debugging.', 'EXPLAIN ANALYZE SELECT * FROM code_snippet WHERE user_id = 1;', 'PostgreSQL', 'Performance', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PostgreSQL: Copy Command (CSV)', 'Efficient bulk data loading.', 'COPY users(name, email) FROM ''/data/users.csv'' DELIMITER '','' CSV HEADER;', 'PostgreSQL', 'Performance', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PostgreSQL: Extensions - UUID', 'Enabling and using UUIDs.', 'CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
SELECT uuid_generate_v4();', 'PostgreSQL', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PostgreSQL: Index - GIN', 'Optimizing JSON and array searches.', 'CREATE INDEX idx_meta ON events USING GIN (metadata);', 'PostgreSQL', 'Performance', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PostgreSQL: Schema Creation', 'Organizing tables into namespaces.', 'CREATE SCHEMA analytics;
ALTER TABLE events SET SCHEMA analytics;', 'PostgreSQL', 'Architecture', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PostgreSQL: Advisory Locks', 'Application-level distributed locking.', 'SELECT pg_advisory_lock(12345);
-- perform critical section
SELECT pg_advisory_unlock(12345);', 'PostgreSQL', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PostgreSQL: Tablespace Move', 'Relocating data on disk.', 'ALTER TABLE large_table SET TABLESPACE fast_ssd;', 'PostgreSQL', 'Architecture', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PostgreSQL: Recursive CTE', 'Traversing hierarchical data.', 'WITH RECURSIVE subordinates AS (
    SELECT id, manager_id, name FROM employees WHERE id = 1
    UNION
    SELECT e.id, e.manager_id, e.name FROM employees e
    INNER JOIN subordinates s ON s.id = e.manager_id
) SELECT * FROM subordinates;', 'PostgreSQL', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PostgreSQL: Cast Operator', 'Type conversion syntax.', 'SELECT 123::text, ''2023-01-01''::date;', 'PostgreSQL', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PostgreSQL: Foreign Data Wrapper (FDW)', 'Connecting to remote databases.', 'CREATE SERVER foreign_server 
FOREIGN DATA WRAPPER postgres_fdw 
OPTIONS (host ''remote_host'', dbname ''remote_db'');', 'PostgreSQL', 'Architecture', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PostgreSQL: Enum Types', 'Defining custom status types.', 'CREATE TYPE task_status AS ENUM (''todo'', ''doing'', ''done'');
ALTER TABLE tasks ADD COLUMN status task_status;', 'PostgreSQL', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
