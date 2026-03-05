-- V21__Import_SQL_Snippets.sql

INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('SQL: Basic Select with Where', 'Retrieving filtered records.', 'SELECT * FROM users WHERE active = true AND age > 18;', 'SQL', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('SQL: Inner Join Example', 'Combining data from two tables.', 'SELECT orders.id, users.name 
FROM orders 
INNER JOIN users ON orders.user_id = users.id;', 'SQL', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('SQL: Group By and Count', 'Aggregating data by category.', 'SELECT category, COUNT(*) 
FROM products 
GROUP BY category;', 'SQL', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('SQL: Update with Condition', 'Modifying existing records.', 'UPDATE snippets 
SET is_public = true 
WHERE user_id = 5;', 'SQL', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('SQL: Delete with Subquery', 'Removing records based on another table.', 'DELETE FROM sessions 
WHERE user_id NOT IN (SELECT id FROM users);', 'SQL', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('SQL: Case When Logic', 'Conditional logic in queries.', 'SELECT name, 
  CASE WHEN score >= 90 THEN ''A'' 
       WHEN score >= 80 THEN ''B'' 
       ELSE ''C'' END as grade 
FROM students;', 'SQL', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('SQL: Having Clause', 'Filtering aggregated results.', 'SELECT department, AVG(salary) 
FROM employees 
GROUP BY department 
HAVING AVG(salary) > 5000;', 'SQL', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('SQL: Union All', 'Combining result sets including duplicates.', 'SELECT city FROM customers
UNION ALL
SELECT city FROM suppliers;', 'SQL', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('SQL: Window Function - Row Number', 'Assigning sequence numbers to rows.', 'SELECT name, department, 
  ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) as rank
FROM employees;', 'SQL', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('SQL: Common Table Expression (CTE)', 'Defining temporary result sets.', 'WITH RegionalSales AS (
    SELECT region, SUM(amount) as total
    FROM sales
    GROUP BY region
)
SELECT * FROM RegionalSales WHERE total > 10000;', 'SQL', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('SQL: Insert Into Select', 'Copying data between tables.', 'INSERT INTO archives (id, title, content)
SELECT id, title, content FROM snippets WHERE archived = true;', 'SQL', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('SQL: Coalesce Function', 'Handling null values with defaults.', 'SELECT name, COALESCE(phone, ''No Phone'') as contact FROM users;', 'SQL', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('SQL: Self Join', 'Joining a table with itself.', 'SELECT e.name as Employee, m.name as Manager
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.id;', 'SQL', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('SQL: Exist Subquery', 'Checking for existence of related records.', 'SELECT * FROM users u
WHERE EXISTS (SELECT 1 FROM orders o WHERE o.user_id = u.id);', 'SQL', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('SQL: String Concatenation', 'Combining text columns.', 'SELECT first_name || '' '' || last_name as full_name FROM users;', 'SQL', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('SQL: Date Truncation', 'Grouping by specific time units.', 'SELECT DATE_TRUNC(''month'', created_at) as month, COUNT(*)
FROM signups
GROUP BY month;', 'SQL', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('SQL: Constraint - Check', 'Adding data validation logic.', 'ALTER TABLE products 
ADD CONSTRAINT price_positive CHECK (price > 0);', 'SQL', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('SQL: Unique Index', 'Ensuring column uniqueness.', 'CREATE UNIQUE INDEX idx_user_email ON users(email);', 'SQL', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('SQL: Transaction Blocks', 'Atomic operations.', 'BEGIN;
UPDATE accounts SET balance = balance - 100 WHERE id = 1;
UPDATE accounts SET balance = balance + 100 WHERE id = 2;
COMMIT;', 'SQL', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('SQL: Grant Permissions', 'Database access control.', 'GRANT SELECT, INSERT ON snippets TO web_app_user;', 'SQL', 'Security', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
