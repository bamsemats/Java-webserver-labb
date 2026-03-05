-- V26__Import_Viral_Advanced_Snippets.sql

INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('JavaScript: The "Obfuscated" One-Liner for FizzBuzz', 'A highly condensed FizzBuzz implementation.', 'for(i=0;i<100;)console.log((++i%3?'''':"Fizz")+(i%5?'''':"Buzz")||i)', 'JavaScript', 'Viral', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Python: One-Liner Quicksort', 'Implementing Quicksort in a single return statement.', 'qsort = lambda l: qsort([x for x in l[1:] if x <= l[0]]) + [l[0]] + qsort([x for x in l[1:] if x > l[0]]) if l else []', 'Python', 'Algorithms', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('React: The "Impossible" Component (Self-Rendering)', 'A component that renders itself recursively with a limit.', 'const Recursive = ({ depth }) => (
  <div>
    Depth: {depth}
    {depth > 0 && <Recursive depth={depth - 1} />}
  </div>
);', 'React', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Go: Infinite Channel Stream', 'Creating a lazy infinite stream of integers.', 'func Stream() <-chan int {
    ch := make(chan int)
    go func() {
        for i := 0; ; i++ { ch <- i }
    }()
    return ch
}', 'Go', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C++: Compile-Time Fibonacci', 'Calculating Fibonacci at compile time using templates.', 'template<int N> struct Fib { enum { val = Fib<N-1>::val + Fib<N-2>::val }; };
template<> struct Fib<0> { enum { val = 0 }; };
template<> struct Fib<1> { enum { val = 1 }; };', 'C++', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Rust: Zero-Cost Abstraction Example', 'A trait-based design that compiles away.', 'trait Sound { fn make(&self); }
struct Dog;
impl Sound for Sound { fn make(&self) { /* noop */ } }
fn static_dispatch<T: Sound>(t: T) { t.make(); }', 'Rust', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('SQL: The "Delete Duplicates" Trick', 'Removing duplicate rows while keeping the one with lowest ID.', 'DELETE FROM users WHERE id NOT IN (
  SELECT MIN(id) FROM users GROUP BY email
);', 'SQL', 'Viral', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Bash: The "Fork Bomb" (EDUCATIONAL ONLY)', 'A famous string that consumes system resources.', ':(){ :|:& };:', 'Bash', 'Viral', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Java: The "Fast Inverse Square Root" Port', 'Quake III algorithm ported to Java.', 'public static float invSqrt(float x) {
    float xhalf = 0.5f * x;
    int i = Float.floatToIntBits(x);
    i = 0x5f3759df - (i >> 1);
    x = Float.intBitsToFloat(i);
    return x * (1.5f - xhalf * x * x);
}', 'Java', 'Algorithms', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('CSS: Pure CSS Toggle Switch', 'A functional checkbox-based toggle without JS.', 'input:checked + .slider { background-color: #2196F3; }
.slider:before { content: ""; transition: .4s; }', 'CSS', 'Viral', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('TypeScript: Type-Level Addition', 'Performing arithmetic using only TypeScript types.', 'type Length<T extends any[]> = T[''length''];
type BuildArray<L extends number, T extends any[] = []> = 
  T[''length''] extends L ? T : BuildArray<L, [...T, any]>;
type Add<A extends number, B extends number> = 
  Length<[...BuildArray<A>, ...BuildArray<B>]>;', 'TypeScript', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PHP: Variable Variables Trick', 'Accessing variable names dynamically.', '$name = "mats";
$$name = "developer";
echo $mats; // outputs "developer"', 'PHP', 'Viral', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Kotlin: Reified Types Injection', 'Accessing generic classes at runtime.', 'inline fun <reified T> Gson.fromJson(json: String): T = 
    this.fromJson(json, T::class.java)', 'Kotlin', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Docker: The "Golden" Small Image', 'Alpine-based minimal static binary execution.', 'FROM scratch
COPY my-static-binary /app
ENTRYPOINT ["/app"]', 'Docker', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('PostgreSQL: Hierarchical Path Query', 'Using ltree for directory structures.', 'SELECT path FROM folders 
WHERE path <@ ''root.work.projects'';', 'PostgreSQL', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C#: Expression Tree Compilation', 'Turning code-data into executable logic.', 'Expression<Func<int, bool>> expr = x => x > 5;
var func = expr.Compile();
bool res = func(10);', 'C#', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Swift: Key-Path Observation', 'Modern reactive-style state tracking.', 'user.observe(\.name, options: [.new]) { user, change in
    print(change.newValue)
}', 'Swift', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('MongoDB: The "Pre-Aggregated" Pattern', 'Efficiently tracking counts without $group.', 'db.stats.updateOne(
  { _id: "daily_hits" },
  { $inc: { [`hits.${day}`]: 1 } },
  { upsert: true }
);', 'MongoDB', 'Performance', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Java: Method Handles for Performance', 'Faster-than-reflection dynamic calls.', 'MethodHandle mh = lookup.findVirtual(String.class, "length", MethodType.methodType(int.class));
int len = (int) mh.invokeExact("hello");', 'Java', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Bash: Parallel Stream Processing', 'Using named pipes for high-speed piping.', 'mkfifo pipe; command1 > pipe & command2 < pipe', 'Bash', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
