-- V13__Import_PHP_Snippets.sql

INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('PHP: Array Filter and Map', 'Functional collection processing.', '$numbers = [1, 2, 3, 4, 5];
$evens = array_filter($numbers, fn($n) => $n % 2 === 0);
$squared = array_map(fn($n) => $n ** 2, $evens);', 'PHP', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PHP: PDO Database Connection', 'Secure database access.', '$pdo = new PDO("mysql:host=localhost;dbname=test", "user", "pass", [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
]);', 'PHP', 'Data', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PHP: Anonymous Class', 'On-the-fly class definition.', '$util = new class {
    public function log($msg) { echo $msg; }
};
$util->log("Hello");', 'PHP', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PHP: Null Coalescing Operator', 'Handling missing values.', '$name = $_GET["name"] ?? "Guest";', 'PHP', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PHP: Custom Exception Handler', 'Global error catching.', 'set_exception_handler(function($e) {
    http_response_code(500);
    echo "Error: " . $e->getMessage();
});', 'PHP', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PHP: JSON Encode/Decode', 'Working with JSON data.', '$data = ["status" => "ok", "id" => 123];
$json = json_encode($data, JSON_PRETTY_PRINT);
$decoded = json_decode($json, true);', 'PHP', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PHP: Match Expression (PHP 8.0+)', 'Modern switch alternative.', '$status = match ($code) {
    200, 201 => "Success",
    404 => "Not Found",
    default => "Unknown"
};', 'PHP', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PHP: Property Promotion', 'Cleaner class constructors.', 'class User {
    public function __construct(
        public int $id,
        public string $name
    ) {}
}', 'PHP', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PHP: File Upload Logic', 'Handling multipart form data.', '$target = "uploads/" . basename($_FILES["file"]["name"]);
if (move_uploaded_file($_FILES["file"]["tmp_name"], $target)) {
    echo "Uploaded";
}', 'PHP', 'FileSystem', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PHP: Password Hashing', 'Securely storing passwords.', '$hash = password_hash("secret123", PASSWORD_BCRYPT);
if (password_verify("secret123", $hash)) {
    echo "Valid";
}', 'PHP', 'Security', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PHP: Guzzle HTTP Request', 'Using popular HTTP client library.', '$client = new \GuzzleHttp\Client();
$res = $client->request("GET", "https://api.example.com");
echo $res->getBody();', 'PHP', 'Networking', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PHP: Composer Autoloader', 'Standard project bootstrap.', 'require __DIR__ . "/vendor/autoload.php";', 'PHP', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PHP: Traits Example', 'Code reuse through traits.', 'trait Logger {
    public function log($msg) { echo "[LOG]: $msg"; }
}
class App { use Logger; }', 'PHP', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PHP: Interface and Implementation', 'Defining contracts.', 'interface Shape { public function area(): float; }
class Circle implements Shape {
    public function area(): float { return pi() * 5 ** 2; }
}', 'PHP', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PHP: DateTime Object', 'Modern date handling.', '$now = new DateTime();
echo $now->format("Y-m-d H:i:s");
$now->modify("+1 day");', 'PHP', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PHP: Session Start and Set', 'Managing user sessions.', 'session_start();
$_SESSION["user_id"] = 1;
echo $_SESSION["user_id"];', 'PHP', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PHP: Reflection API', 'Introspecting class properties.', '$ref = new ReflectionClass("User");
foreach ($ref->getProperties() as $prop) {
    echo $prop->getName();
}', 'PHP', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PHP: Simple Router Logic', 'Basic URL routing.', '$path = $_SERVER["REQUEST_URI"];
if ($path === "/home") {
    require "home.php";
}', 'PHP', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PHP: Error Reporting Config', 'Debugging settings.', 'error_reporting(E_ALL);
ini_set("display_errors", 1);', 'PHP', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PHP: Stream Context', 'Customizing file stream operations.', '$ctx = stream_context_create([
    "http" => ["header" => "Authorization: Bearer xyz"]
]);
echo file_get_contents("http://api.com", false, $ctx);', 'PHP', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
