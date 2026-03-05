-- V4__Import_JavaScript_Snippets.sql

-- Ensure the admin user exists (from V3)
INSERT INTO users (username, email, password) 
VALUES ('admin', 'admin@example.com', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi')
ON CONFLICT (username) DO NOTHING;

-- Insert JavaScript snippets
INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('JavaScript: Debounce Function for Search Input', 'Prevents a function from firing too frequently, commonly used for search inputs.', 'function debounce(fn, delay) {\n  let timeout;\n  return (...args) => {\n    clearTimeout(timeout);\n    timeout = setTimeout(() => fn(...args), delay);\n  };\n}', 'JavaScript', 'Performance', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('JavaScript: Throttle Function for Scroll Events', 'Limits how often a function runs during rapid events like scrolling.', 'function throttle(fn, limit) {\n  let waiting = false;\n  return function(...args) {\n    if (!waiting) {\n      fn.apply(this, args);\n      waiting = true;\n      setTimeout(() => waiting = false, limit);\n    }\n  };\n}', 'JavaScript', 'Performance', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('JavaScript: Flatten Nested Array Recursively', 'Flattens deeply nested arrays into a single array.', 'function flatten(arr) {\n  return arr.reduce((acc, val) => acc.concat(Array.isArray(val) ? flatten(val) : val), []);\n}', 'JavaScript', 'Algorithms', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('JavaScript: Group Array of Objects by Property', 'Groups array items by a given key.', 'function groupBy(arr, key) {\n  return arr.reduce((acc, obj) => {\n    (acc[obj[key]] ||= []).push(obj);\n    return acc;\n  }, {});\n}', 'JavaScript', 'Data Processing', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('JavaScript: Retry Async Function with Exponential Backoff', 'Retries a failing async function with exponential delay.', 'async function retry(fn, retries = 3, delay = 500) {\n  try {\n    return await fn();\n  } catch (err) {\n    if (retries <= 0) throw err;\n    await new Promise(r => setTimeout(r, delay));\n    return retry(fn, retries - 1, delay * 2);\n  }\n}', 'JavaScript', 'Async', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('JavaScript: Implement LRU Cache Using Map', 'Simple Least Recently Used cache implementation.', 'class LRUCache {\n  constructor(limit = 5) {\n    this.cache = new Map();\n    this.limit = limit;\n  }\n  get(key) {\n    if (!this.cache.has(key)) return null;\n    const value = this.cache.get(key);\n    this.cache.delete(key);\n    this.cache.set(key, value);\n    return value;\n  }\n  set(key, value) {\n    if (this.cache.has(key)) this.cache.delete(key);\n    this.cache.set(key, value);\n    if (this.cache.size > this.limit) {\n      const first = this.cache.keys().next().value;\n      this.cache.delete(first);\n    }\n  }\n}', 'JavaScript', 'Algorithms', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('JavaScript: Remove Duplicate Values from Array', 'Returns an array with unique values.', 'const unique = arr => [...new Set(arr)];', 'JavaScript', 'Arrays', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('JavaScript: Chunk Array into Smaller Arrays', 'Splits an array into equal-sized chunks.', 'function chunk(arr, size) {\n  const result = [];\n  for (let i = 0; i < arr.length; i += size) {\n    result.push(arr.slice(i, i + size));\n  }\n  return result;\n}', 'JavaScript', 'Algorithms', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('JavaScript: Generate Random Integer in Range', 'Returns a random integer between min and max.', 'const randomInt = (min, max) => Math.floor(Math.random() * (max - min + 1)) + min;', 'JavaScript', 'Utilities', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('JavaScript: Memoize Function Results for Performance', 'Caches expensive function results.', 'function memoize(fn) {\n  const cache = {};\n  return arg => cache[arg] || (cache[arg] = fn(arg));\n}', 'JavaScript', 'Performance', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('JavaScript: Parse URL Query Parameters into Object', 'Converts query parameters into a JavaScript object.', 'const params = Object.fromEntries(new URLSearchParams(window.location.search));', 'JavaScript', 'Browser API', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('JavaScript: Copy Text to Clipboard Using Clipboard API', 'Copies text to clipboard in modern browsers.', 'navigator.clipboard.writeText("Hello World");', 'JavaScript', 'Browser API', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('JavaScript: Shuffle Array Using Fisher-Yates Algorithm', 'Randomizes array order with Fisher-Yates shuffle.', 'function shuffle(arr) {\n  for (let i = arr.length - 1; i > 0; i--) {\n    const j = Math.floor(Math.random() * (i + 1));\n    [arr[i], arr[j]] = [arr[j], arr[i]];\n  }\n  return arr;\n}', 'JavaScript', 'Algorithms', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('JavaScript: Check if Object is Empty', 'Returns true if object has no properties.', 'const isEmpty = obj => Object.keys(obj).length === 0;', 'JavaScript', 'Utilities', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('JavaScript: Capitalize First Letter of String', 'Capitalizes the first character of a string.', 'const capitalize = str => str.charAt(0).toUpperCase() + str.slice(1);', 'JavaScript', 'Strings', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('JavaScript: Delay Execution Using Sleep Promise', 'Creates an async delay.', 'const sleep = ms => new Promise(resolve => setTimeout(resolve, ms));', 'JavaScript', 'Async', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('JavaScript: Safe JSON Parse with Try Catch', 'Parses JSON safely without throwing errors.', 'function safeParse(json) {\n  try { return JSON.parse(json); }\n  catch { return null; }\n}', 'JavaScript', 'Error Handling', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('JavaScript: Event Delegation for Dynamic Elements', 'Handles events on dynamically added elements.', 'document.body.addEventListener("click", e => {\n  if (e.target.matches(".btn")) {\n    console.log("Button clicked");\n  }\n});', 'JavaScript', 'DOM', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('JavaScript: Download File from Blob Object', 'Triggers a browser download from a Blob.', 'function download(blob, filename) {\n  const url = URL.createObjectURL(blob);\n  const a = document.createElement("a");\n  a.href = url;\n  a.download = filename;\n  a.click();\n  URL.revokeObjectURL(url);\n}', 'JavaScript', 'Browser API', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('JavaScript: Generate UUID Using Crypto API', 'Creates a secure UUID.', 'const id = crypto.randomUUID();', 'JavaScript', 'Security', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
