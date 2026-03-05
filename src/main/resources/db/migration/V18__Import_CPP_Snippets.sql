-- V18__Import_CPP_Snippets.sql

INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('C++: Vector and Range-based For', 'Modern collection iteration.', 'std::vector<int> v = {1, 2, 3};
for (int x : v) {
    std::cout << x << std::endl;
}', 'C++', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C++: Smart Pointers (unique_ptr)', 'Modern memory management.', 'auto ptr = std::make_unique<MyClass>();
ptr->doSomething();
// Auto-deleted when out of scope', 'C++', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C++: Lambda Expression', 'Functional anonymous functions.', 'auto sum = [](int a, int b) { return a + b; };
std::cout << sum(5, 5);', 'C++', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C++: Class with Constructor Initializer', 'Best practice initialization.', 'class User {
    int id;
public:
    User(int i) : id(id) {}
};', 'C++', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C++: Template Function', 'Generic programming basics.', 'template <typename T>
T getMax(T a, T b) {
    return (a > b) ? a : b;
}', 'C++', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C++: Std::Map usage', 'Associative container basics.', 'std::map<std::string, int> ages;
ages["Alice"] = 25;
if (ages.count("Alice")) { /* exists */ }', 'C++', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C++: Move Semantics', 'Efficient object transfer.', 'std::string s1 = "hello";
std::string s2 = std::move(s1);
// s1 is now empty', 'C++', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C++: Threading (std::thread)', 'Basic concurrent execution.', 'std::thread t([]() {
    std::cout << "Thread running";
});
t.join();', 'C++', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C++: File I/O (fstream)', 'Reading and writing files.', 'std::ofstream out("f.txt");
out << "Data";
out.close();', 'C++', 'FileSystem', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C++: Inheritance and Virtual methods', 'Polymorphism basics.', 'class Shape {
public:
    virtual void draw() = 0;
};
class Circle : public Shape {
    void draw() override {}
};', 'C++', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C++: Std::Optional (C++17)', 'Handling maybe-values.', 'std::optional<int> find(int id) {
    if (found) return 42;
    return std::nullopt;
}', 'C++', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C++: Std::Variant (C++17)', 'Type-safe unions.', 'std::variant<int, float> v;
v = 12;
int val = std::get<int>(v);', 'C++', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C++: Static Assert', 'Compile-time checks.', 'static_assert(sizeof(int) == 4, "Need 32-bit int");', 'C++', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C++: Enums (Scoped)', 'Strongly typed enums.', 'enum class Color { Red, Green, Blue };
Color c = Color::Red;', 'C++', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C++: Constexpr', 'Compile-time computations.', 'constexpr int square(int x) { return x * x; }
int arr[square(5)];', 'C++', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C++: Namespace usage', 'Preventing name collisions.', 'namespace MyLib {
    void init() {}
}
MyLib::init();', 'C++', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C++: RAII pattern', 'Resource Acquisition Is Initialization.', 'class Guard {
    Mutex& m;
public:
    Guard(Mutex& mu) : m(mu) { m.lock(); }
    ~Guard() { m.unlock(); }
};', 'C++', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C++: Std::Sort with Comparator', 'Custom sorting logic.', 'std::sort(v.begin(), v.end(), [](int a, int b) {
    return a > b;
});', 'C++', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C++: Structured Bindings (C++17)', 'Unpacking tuples/structs.', 'auto [x, y] = getPoint();
std::cout << x << ", " << y;', 'C++', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C++: Using keyword (Alias)', 'Modern typedef alternative.', 'using UserList = std::vector<User>;
UserList users;', 'C++', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
