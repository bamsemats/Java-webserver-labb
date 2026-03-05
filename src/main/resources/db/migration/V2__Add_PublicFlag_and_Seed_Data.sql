-- V2__Add_PublicFlag_and_Seed_Data.sql

-- Add the public flag
ALTER TABLE code_snippet ADD COLUMN IF NOT EXISTS is_public BOOLEAN DEFAULT FALSE;

-- Seed Initial Snippets (WITHOUT user_id, which is added in V3)
INSERT INTO code_snippet (title, description, content, language, category, is_public, created_at) VALUES
('Hello World', 'The classic first program in Java.', 'public class Main {\n    public static void main(String[] args) {\n        System.out.println("Hello, World!");\n    }\n}', 'Java', 'Basics', TRUE, CURRENT_TIMESTAMP),
('Spring Boot Hello World', 'A simple REST controller in Spring Boot.', '@RestController\n@RequestMapping("/api")\npublic class MyController {\n    @GetMapping("/hello")\n    public String sayHello() {\n        return "Hello World";\n    }\n}', 'Java', 'Frameworks', TRUE, CURRENT_TIMESTAMP);
