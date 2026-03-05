-- V15__Import_Rust_Snippets.sql

INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('Rust: Vector Filtering and Collect', 'Safe collection processing.', 'let nums = vec![1, 2, 3, 4, 5];
let evens: Vec<i32> = nums.into_iter()
    .filter(|x| x % 2 == 0)
    .collect();', 'Rust', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Rust: Struct with Implementation', 'Data and methods.', 'struct Rect { w: u32, h: u32 }
impl Rect {
    fn area(&self) -> u32 { self.w * self.h }
}', 'Rust', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Rust: Pattern Matching (Option)', 'Safe null handling.', 'match some_option {
    Some(val) => println!("{}", val),
    None => println!("Empty"),
}', 'Rust', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Rust: Error Handling (Result)', 'Explicit error management.', 'fn do_work() -> Result<(), String> {
    if success { Ok(()) } else { Err("Fail".into()) }
}', 'Rust', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Rust: Borrowing and References', 'Memory safety basics.', 'fn greet(name: &String) {
    println!("Hello {}", name);
}
let s = String::from("Rust");
greet(&s);', 'Rust', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Rust: Traits Definition', 'Defining shared behavior.', 'trait Greet { fn say(&self); }
struct User;
impl Greet for User {
    fn say(&self) { println!("Hi"); }
}', 'Rust', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Rust: Async Function (Tokio)', 'Asynchronous execution.', 'async fn fetch() {
    let res = reqwest::get("url").await;
}', 'Rust', 'Async', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Rust: Arc and Mutex', 'Thread-safe shared state.', 'let data = Arc::new(Mutex::new(0));
let clone = Arc::clone(&data);
thread::spawn(move || {
    let mut num = clone.lock().unwrap();
    *num += 1;
});', 'Rust', 'Concurrency', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Rust: Enums with Data', 'Powerful algebraic data types.', 'enum Message {
    Quit,
    Move { x: i32, y: i32 },
    Write(String),
}', 'Rust', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Rust: Smart Pointers (Box)', 'Heap allocation.', 'let val = Box::new(5);', 'Rust', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Rust: Closure with Capturing', 'Functional logic.', 'let x = 4;
let equal_to_x = |z| z == x;', 'Rust', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Rust: Macros (vec!)', 'Code generation basics.', 'let v = vec![1, 2, 3];', 'Rust', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Rust: Module System', 'Organizing code.', 'mod network {
    pub fn connect() {}
}', 'Rust', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Rust: Generics in Structs', 'Type-safe abstraction.', 'struct Point<T> { x: T, y: T }', 'Rust', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Rust: Error Propagation (?)', 'Cleaner error handling.', 'fn read() -> Result<String, io::Error> {
    let mut s = String::new();
    File::open("f.txt")?.read_to_string(&mut s)?;
    Ok(s)
}', 'Rust', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Rust: HashMap usage', 'Key-value storage.', 'let mut map = HashMap::new();
map.insert("id", 1);', 'Rust', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Rust: Ownership Transfer', 'Moving data.', 'let s1 = String::from("hello");
let s2 = s1; // s1 is now invalid', 'Rust', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Rust: Testing (Unit Tests)', 'Built-in testing.', '#[cfg(test)]
mod tests {
    #[test]
    fn it_works() { assert_eq!(2 + 2, 4); }
}', 'Rust', 'Testing', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Rust: Iterators (Map)', 'Lazy evaluation.', 'let v: Vec<i32> = vec![1, 2].iter().map(|x| x + 1).collect();', 'Rust', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Rust: Lifetimes basics', 'Explicit reference tracking.', 'fn longest<''a>(x: &''a str, y: &''a str) -> &''a str {
    if x.len() > y.len() { x } else { y }
}', 'Rust', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
