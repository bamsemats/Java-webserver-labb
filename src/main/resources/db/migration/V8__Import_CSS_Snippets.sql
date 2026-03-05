-- V8__Import_CSS_Snippets.sql

-- Ensure the admin user exists (from V3)
INSERT INTO users (username, email, password) 
VALUES ('admin', 'admin@example.com', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi')
ON CONFLICT (username) DO NOTHING;

-- Insert CSS snippets
INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('CSS: Center Element with Flexbox', 'Centers content horizontally and vertically.', '.container {\n display:flex;\n justify-content:center;\n align-items:center;\n}', 'CSS', 'Layout', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('CSS: Responsive Grid Layout', 'Creates responsive grid columns.', '.grid {\n display:grid;\n grid-template-columns: repeat(auto-fit, minmax(200px,1fr));\n}', 'CSS', 'Layout', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('CSS: Text Truncation with Ellipsis', 'Truncates overflowing text.', '.truncate {\n overflow:hidden;\n text-overflow:ellipsis;\n white-space:nowrap;\n}', 'CSS', 'Typography', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('CSS: Sticky Header Example', 'Creates a sticky header.', 'header {\n position:sticky;\n top:0;\n}', 'CSS', 'Layout', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('CSS: Smooth Scrolling Behavior', 'Enables smooth scroll.', 'html {\n scroll-behavior:smooth;\n}', 'CSS', 'UX', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('CSS: Hover Button Animation', 'Adds hover animation.', '.btn:hover {\n transform:scale(1.05);\n}', 'CSS', 'Animations', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('CSS: Aspect Ratio Container', 'Maintains aspect ratio.', '.box {\n aspect-ratio:16/9;\n}', 'CSS', 'Layout', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('CSS: Dark Mode Media Query', 'Detects system dark mode.', '@media (prefers-color-scheme: dark) {\n body{background:#111;color:#fff;}\n}', 'CSS', 'Responsive', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('CSS: Hide Scrollbar', 'Hides scrollbar in WebKit.', '::-webkit-scrollbar{display:none;}', 'CSS', 'UX', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('CSS: Center Absolute Element', 'Centers element using transform.', '.box {\n position:absolute;\n top:50%;\n left:50%;\n transform:translate(-50%,-50%);\n}', 'CSS', 'Layout', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('CSS: Card Shadow Style', 'Adds modern card shadow.', '.card{\n box-shadow:0 4px 12px rgba(0,0,0,0.1);\n}', 'CSS', 'Styling', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('CSS: Fade In Animation', 'Simple fade animation.', '@keyframes fade{from{opacity:0}to{opacity:1}}', 'CSS', 'Animations', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('CSS: Multi Line Text Clamp', 'Limits text lines.', '.clamp{\n display:-webkit-box;\n -webkit-line-clamp:3;\n -webkit-box-orient:vertical;\n overflow:hidden;\n}', 'CSS', 'Typography', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('CSS: Responsive Container Width', 'Centers responsive container.', '.container{\n max-width:1200px;\n margin:auto;\n}', 'CSS', 'Layout', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('CSS: Gradient Background', 'Creates gradient background.', 'body{\n background:linear-gradient(45deg,#ff6b6b,#5f27cd);\n}', 'CSS', 'Styling', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('CSS: Disable Text Selection', 'Prevents text selection.', '.noselect{\n user-select:none;\n}', 'CSS', 'UX', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('CSS: Image Cover Fit', 'Ensures image fills container.', 'img{\n object-fit:cover;\n}', 'CSS', 'Media', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('CSS: CSS Variables Example', 'Defines reusable variables.', ':root{\n --primary:#3498db;\n}', 'CSS', 'Architecture', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('CSS: Responsive Font Size Clamp', 'Creates fluid typography.', 'h1{\n font-size:clamp(1.5rem,5vw,3rem);\n}', 'CSS', 'Typography', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('CSS: Skeleton Loading Animation', 'Creates loading placeholder.', '.skeleton{\n background:linear-gradient(90deg,#eee,#ddd,#eee);\n animation:loading 1.5s infinite;\n}', 'CSS', 'UX', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
