-- V5__Import_TypeScript_Snippets.sql

-- Ensure the admin user exists (from V3)
INSERT INTO users (username, email, password) 
VALUES ('admin', 'admin@example.com', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi')
ON CONFLICT (username) DO NOTHING;

-- Insert TypeScript snippets
INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('TypeScript: Define Interface for API Response', 'Defines a strongly typed API response.', 'interface User {\n  id: number;\n  name: string;\n  email: string;\n}', 'TypeScript', 'Types', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('TypeScript: Generic Function Example', 'Creates reusable generic functions.', 'function identity<T>(value: T): T {\n  return value;\n}', 'TypeScript', 'Generics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('TypeScript: Async API Fetch with Typed Response', 'Fetch data with type safety.', 'async function getUser(): Promise<User> {\n  const res = await fetch("/api/user");\n  return res.json();\n}', 'TypeScript', 'Networking', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('TypeScript: Enum for Application Roles', 'Defines user roles with enums.', 'enum Role {\n  Admin,\n  User,\n  Guest\n}', 'TypeScript', 'Types', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('TypeScript: Utility Type Partial Example', 'Makes all properties optional.', 'type PartialUser = Partial<User>;', 'TypeScript', 'Types', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('TypeScript: Create Readonly Object Type', 'Creates immutable object types.', 'type ReadonlyUser = Readonly<User>;', 'TypeScript', 'Types', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('TypeScript: Union Type Example', 'Allows multiple possible types.', 'type ID = string | number;', 'TypeScript', 'Types', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('TypeScript: Type Guard for String', 'Checks runtime type safely.', 'function isString(value: unknown): value is string {\n  return typeof value === "string";\n}', 'TypeScript', 'Validation', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('TypeScript: Optional Chaining Example', 'Safely access nested properties.', 'const city = user?.address?.city;', 'TypeScript', 'Utilities', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('TypeScript: Record Utility Type Example', 'Creates an object type with fixed keys.', 'const roles: Record<string, boolean> = { admin: true };', 'TypeScript', 'Types', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('TypeScript: Generic API Response Wrapper', 'Standard API response pattern.', 'interface ApiResponse<T> {\n  data: T;\n  error?: string;\n}', 'TypeScript', 'API Patterns', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('TypeScript: Tuple Type Example', 'Defines fixed-length arrays.', 'const coords: [number, number] = [10, 20];', 'TypeScript', 'Types', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('TypeScript: Narrow Type with In Operator', 'Type guard using property existence.', 'if ("id" in user) {\n console.log(user.id);\n}', 'TypeScript', 'Validation', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('TypeScript: Map Array with Type Safety', 'Transforms array items safely.', 'const ids = users.map(u => u.id);', 'TypeScript', 'Arrays', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('TypeScript: Function Overload Example', 'Defines multiple function signatures.', 'function add(a: number, b: number): number;\nfunction add(a: string, b: string): string;', 'TypeScript', 'Functions', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('TypeScript: Index Signature Object', 'Allows dynamic object keys.', 'interface Dictionary {\n  [key: string]: string;\n}', 'TypeScript', 'Types', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('TypeScript: Use Awaited Utility Type', 'Extracts resolved promise type.', 'type Result = Awaited<Promise<string>>;', 'TypeScript', 'Types', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('TypeScript: Default Parameter Values', 'Adds default values to parameters.', 'function greet(name: string = "Guest") {\n  return `Hello ${name}`;\n}', 'TypeScript', 'Functions', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('TypeScript: Filter Array with Type Predicate', 'Narrows array type after filter.', 'const strings = values.filter((v): v is string => typeof v === "string");', 'TypeScript', 'Arrays', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('TypeScript: Deep Readonly Utility Pattern', 'Recursive readonly object pattern.', 'type DeepReadonly<T> = {\n  readonly [P in keyof T]: DeepReadonly<T[P]>;\n};', 'TypeScript', 'Advanced Types', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
