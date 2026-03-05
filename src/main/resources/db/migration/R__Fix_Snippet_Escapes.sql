-- R__Fix_Snippet_Escapes.sql
-- This script replaces literal '\n' characters with actual database newlines.

UPDATE code_snippet 
SET content = REPLACE(content, '\n', CHR(10))
WHERE content LIKE '%\n%';
