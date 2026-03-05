-- V7__Import_HTML_Snippets.sql

-- Ensure the admin user exists (from V3)
INSERT INTO users (username, email, password) 
VALUES ('admin', 'admin@example.com', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi')
ON CONFLICT (username) DO NOTHING;

-- Insert HTML snippets
INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('HTML: Responsive Image with srcset', 'Serve different image sizes for responsive layouts.', '<img src="image.jpg" srcset="small.jpg 480w, medium.jpg 800w, large.jpg 1200w" alt="Example">', 'HTML', 'Responsive', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('HTML: Accessible Button with ARIA Label', 'Improves accessibility for screen readers.', '<button aria-label="Close dialog">X</button>', 'HTML', 'Accessibility', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('HTML: Lazy Loading Images', 'Defers image loading until needed.', '<img src="photo.jpg" loading="lazy" alt="Lazy image">', 'HTML', 'Performance', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('HTML: Video Embed with Controls', 'Embeds a video player.', '<video controls>\n <source src="video.mp4" type="video/mp4">\n</video>', 'HTML', 'Media', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('HTML: External Link with Security Attributes', 'Prevents tabnabbing attacks.', '<a href="https://example.com" target="_blank" rel="noopener noreferrer">Visit</a>', 'HTML', 'Security', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('HTML: Simple Navigation Menu', 'Basic navigation list.', '<nav><ul><li>Home</li><li>About</li></ul></nav>', 'HTML', 'Layout', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('HTML: Form Input with Required Validation', 'Basic HTML validation.', '<input type="email" required>', 'HTML', 'Forms', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('HTML: Meta Viewport for Mobile Layouts', 'Enables responsive layouts on mobile.', '<meta name="viewport" content="width=device-width, initial-scale=1">', 'HTML', 'Responsive', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('HTML: Semantic Article Element', 'Defines self-contained article content.', '<article>\n<h2>Title</h2>\n<p>Content</p>\n</article>', 'HTML', 'Semantics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('HTML: Figure with Caption', 'Associates caption with image.', '<figure>\n<img src="photo.jpg">\n<figcaption>Description</figcaption>\n</figure>', 'HTML', 'Media', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('HTML: Input Pattern Validation', 'Adds regex validation.', '<input type="text" pattern="[A-Za-z]{3}">', 'HTML', 'Forms', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('HTML: Hidden Field in Form', 'Stores data without showing it.', '<input type="hidden" name="token">', 'HTML', 'Forms', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('HTML: Email Input Field', 'Email-specific input validation.', '<input type="email">', 'HTML', 'Forms', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('HTML: Download File Link', 'Triggers file download.', '<a href="file.pdf" download>Download</a>', 'HTML', 'Utilities', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('HTML: HTML5 Audio Player', 'Embeds an audio player.', '<audio controls src="audio.mp3"></audio>', 'HTML', 'Media', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('HTML: Table Structure Example', 'Basic table markup.', '<table>\n<tr><th>Name</th><th>Age</th></tr>\n<tr><td>Alice</td><td>25</td></tr>\n</table>', 'HTML', 'Tables', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('HTML: Input Placeholder Example', 'Displays hint text.', '<input placeholder="Enter username">', 'HTML', 'Forms', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('HTML: Details Accordion Element', 'Native expandable section.', '<details>\n<summary>More info</summary>\n<p>Hidden content</p>\n</details>', 'HTML', 'UI Patterns', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('HTML: Progress Bar Example', 'Displays task progress.', '<progress value="70" max="100"></progress>', 'HTML', 'UI Patterns', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('HTML: Mark Highlighted Text', 'Highlights text semantically.', '<p>Use <mark>important</mark> values.</p>', 'HTML', 'Semantics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
