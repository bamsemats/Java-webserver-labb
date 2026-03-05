-- V10__Import_Node_Snippets.sql

INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('Node.js: Simple HTTP Server', 'Core http module server.', 'const http = require("http");

http.createServer((req, res) => {
  res.writeHead(200, {"Content-Type": "text/plain"});
  res.end("Hello Node.js");
}).listen(3000);', 'Node.js', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Node.js: Read File (Async)', 'Using fs module to read files.', 'const fs = require("fs");

fs.readFile("test.txt", "utf8", (err, data) => {
  if (err) throw err;
  console.log(data);
});', 'Node.js', 'FileSystem', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Node.js: Write File (Promises)', 'Using fs/promises for file writing.', 'const fs = require("fs").promises;

async function write() {
  await fs.writeFile("data.json", JSON.stringify({id: 1}));
}
write();', 'Node.js', 'FileSystem', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Node.js: Express Hello World', 'The standard web framework setup.', 'const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Hello from Express!");
});

app.listen(3000);', 'Node.js', 'Express', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Node.js: Path Module Utilities', 'Working with file paths.', 'const path = require("path");

const fullPath = path.join(__dirname, "public", "index.html");
console.log(fullPath);', 'Node.js', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Node.js: Event Emitter', 'Basic custom event handling.', 'const EventEmitter = require("events");
const myEmitter = new EventEmitter();

myEmitter.on("greet", (name) => console.log(`Hello ${name}`));
myEmitter.emit("greet", "Admin");', 'Node.js', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Node.js: Environment Variables', 'Accessing process.env.', 'require("dotenv").config();

const port = process.env.PORT || 3000;
console.log(`Running on port ${port}`);', 'Node.js', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Node.js: Stream Pipe', 'Efficiently moving data.', 'const fs = require("fs");

const reader = fs.createReadStream("large.txt");
const writer = fs.createWriteStream("copy.txt");
reader.pipe(writer);', 'Node.js', 'Streams', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Node.js: Child Process Spawn', 'Running system commands.', 'const { spawn } = require("child_process");
const ls = spawn("ls", ["-lh", "/usr"]);

ls.stdout.on("data", (data) => console.log(`Output: ${data}`));', 'Node.js', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Node.js: Crypto Hash Password', 'Basic hashing using core module.', 'const crypto = require("crypto");

const hash = crypto.createHash("sha256")
                   .update("password123")
                   .digest("hex");
console.log(hash);', 'Node.js', 'Security', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Node.js: OS Info', 'System information queries.', 'const os = require("os");

console.log(`Free Mem: ${os.freemem()}`);
console.log(`CPU Cores: ${os.cpus().length}`);', 'Node.js', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Node.js: URL Parsing', 'Handling URL components.', 'const { URL } = require("url");

const myUrl = new URL("https://example.com:8080/p/a/t/h?query=string");
console.log(myUrl.hostname);', 'Node.js', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Node.js: Cluster Module', 'Multiprocessing basics.', 'const cluster = require("cluster");
const http = require("http");

if (cluster.isMaster) {
  cluster.fork();
} else {
  http.createServer((req, res) => res.end("Child")).listen(8000);
}', 'Node.js', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Node.js: Buffer Manipulation', 'Binary data handling.', 'const buf = Buffer.from("Hello World", "utf8");
console.log(buf.toString("hex"));', 'Node.js', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Node.js: Worker Threads', 'Parallel compute in Node.', 'const { Worker } = require("worker_threads");

const worker = new Worker("./worker.js");
worker.on("message", (msg) => console.log(msg));', 'Node.js', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Node.js: DNS Lookup', 'Resolving hostnames.', 'const dns = require("dns");

dns.lookup("google.com", (err, address) => {
  console.log(`Address: ${address}`);
});', 'Node.js', 'Networking', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Node.js: Readline Interface', 'Basic terminal interactive input.', 'const readline = require("readline");
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question("Name? ", (answer) => rl.close());', 'Node.js', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Node.js: Timer Immediates', 'Understanding setImmediate.', 'setImmediate(() => {
  console.log("Runs in the next iteration of the event loop");
});', 'Node.js', 'Async', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Node.js: Middleware logic (Express)', 'Custom middleware example.', 'const logger = (req, res, next) => {
  console.log(`${req.method} ${req.url}`);
  next();
};', 'Node.js', 'Express', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Node.js: Async/Await Fetch', 'HTTP client with fetch (Node 18+).', 'async function fetchData() {
  const res = await fetch("https://api.github.com");
  const json = await res.json();
  console.log(json);
}
fetchData();', 'Node.js', 'Async', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
