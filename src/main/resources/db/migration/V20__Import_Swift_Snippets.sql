-- V20__Import_Swift_Snippets.sql

INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('Swift: Struct with Property Observer', 'Responsive data changes.', 'struct User {
    var name: String {
        didSet { print("Changed to \(name)") }
    }
}', 'Swift', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Swift: Optional Binding (if let)', 'Safe unwrapping.', 'if let name = optionalName {
    print("Hello \(name)")
}', 'Swift', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Swift: Guard Statement', 'Early exit pattern.', 'guard let user = currentUser else { return }
print(user.name)', 'Swift', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Swift: Computed Property', 'Calculated values.', 'var area: Double {
    return width * height
}', 'Swift', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Swift: Closures (Trailing Syntax)', 'Compact functional logic.', 'let sorted = names.sorted { $0 < $1 }', 'Swift', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Swift: Protocols and Extensions', 'Defining behavior requirements.', 'protocol Greetable { func greet() }
extension String: Greetable {
    func greet() { print("Hi \(self)") }
}', 'Swift', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Swift: Async/Await (Swift 5.5+)', 'Modern concurrency.', 'func fetch() async throws -> Data {
    let (data, _) = try await URLSession.shared.data(from: url)
    return data
}', 'Swift', 'Async', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Swift: Enums with Associated Values', 'Rich data types.', 'enum Result {
    case success(String)
    case failure(Error)
}', 'Swift', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Swift: Generics Example', 'Reusable type-safe logic.', 'func swap<T>(_ a: inout T, _ b: inout T) {
    let temp = a; a = b; b = temp
}', 'Swift', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Swift: Singletons Pattern', 'Thread-safe instance.', 'class Api {
    static let shared = Api()
    private init() {}
}', 'Swift', 'Patterns', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Swift: Error Handling (Do-Catch)', 'Catching exceptions.', 'do {
    try performAction()
} catch {
    print(error)
}', 'Swift', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Swift: Value vs Reference Types', 'Structs vs Classes.', 'struct Point { var x, y: Int } // Value
class User { var name: String } // Reference', 'Swift', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Swift: Lazy Properties', 'Deferred initialization.', 'lazy var heavy = loadData()', 'Swift', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Swift: Map and CompactMap', 'Transforming collections.', 'let ints = strings.compactMap { Int($0) }', 'Swift', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Swift: Type Casting (as?)', 'Conditional casting.', 'let cell = cell as? MyCustomCell', 'Swift', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Swift: Deinit in Classes', 'Cleanup on release.', 'deinit {
    NotificationCenter.default.removeObserver(self)
}', 'Swift', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Swift: String Interpolation', 'Custom formatting.', 'print("Val: \(val, specifier: "%.2f")")', 'Swift', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Swift: Access Control (Private/Public)', 'Encapsulation levels.', 'private(set) var id: String', 'Swift', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Swift: Protocol Oriented Programming', 'Composition over inheritance.', 'protocol Drawable { }
extension Drawable { func draw() { /* default */ } }', 'Swift', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Swift: Tuple Unpacking', 'Multiple return values.', 'let (code, msg) = getStatus()', 'Swift', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
