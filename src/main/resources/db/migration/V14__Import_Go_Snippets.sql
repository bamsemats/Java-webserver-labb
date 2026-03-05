-- V14__Import_Go_Snippets.sql

INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('Go: Goroutine and WaitGroup', 'Concurrent execution with synchronization.', 'func main() {
    var wg sync.WaitGroup
    wg.Add(1)
    go func() {
        defer wg.Done()
        fmt.Println("Hello from Goroutine")
    }()
    wg.Wait()
}', 'Go', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Go: HTTP Server Handler', 'Standard library web server.', 'func main() {
    http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
        fmt.Fprint(w, "Hello Go!")
    })
    http.ListenAndServe(":8080", nil)
}', 'Go', 'Networking', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Go: Channel Select Pattern', 'Handling multiple channels.', 'select {
case msg1 := <-ch1:
    fmt.Println(msg1)
case msg2 := <-ch2:
    fmt.Println(msg2)
case <-time.After(time.Second):
    fmt.Println("Timeout")
}', 'Go', 'Techniques', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Go: Struct with Methods', 'Object-oriented style in Go.', 'type Rectangle struct {
    Width, Height float64
}
func (r Rectangle) Area() float64 {
    return r.Width * r.Height
}', 'Go', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Go: Error Handling Pattern', 'Explicit error checking.', 'if err := doWork(); err != nil {
    log.Fatalf("Work failed: %v", err)
}', 'Go', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Go: Slice Manipulation', 'Dynamic array handling.', 'nums := []int{1, 2, 3}
nums = append(nums, 4)
subset := nums[1:3]', 'Go', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Go: Map Initialization and Check', 'Using hash maps.', 'm := make(map[string]int)
m["key"] = 42
val, ok := m["key"]
if ok { fmt.Println(val) }', 'Go', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Go: Interface Definition', 'Implicit interface implementation.', 'type Duck interface { Quack() }
type Mallard struct{}
func (m Mallard) Quack() { fmt.Println("Quack!") }', 'Go', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Go: JSON Marshaling', 'Converting structs to JSON.', 'type User struct { ID int `json:"id"` }
u := User{ID: 1}
data, _ := json.Marshal(u)', 'Go', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Go: Pointer Usage', 'Memory references.', 'func update(val *int) {
    *val = 10
}
x := 5
update(&x)', 'Go', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Go: Generic Function (Go 1.18+)', 'Type-safe reusable logic.', 'func Sum[T int | float64](vals []T) T {
    var total T
    for _, v := range vals { total += v }
    return total
}', 'Go', 'Techniques', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Go: Context with Timeout', 'Cancellation propagation.', 'ctx, cancel := context.WithTimeout(context.Background(), time.Second)
defer cancel()
req, _ := http.NewRequestWithContext(ctx, "GET", "url", nil)', 'Go', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Go: OS Signal Handling', 'Graceful shutdown setup.', 'sig := make(chan os.Signal, 1)
signal.Notify(sig, os.Interrupt)
<-sig
fmt.Println("Shutting down...")', 'Go', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Go: File Reading (ioutil/os)', 'Quick file data access.', 'content, err := os.ReadFile("data.txt")
if err == nil { fmt.Print(string(content)) }', 'Go', 'FileSystem', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Go: Embedding Structs', 'Composition over inheritance.', 'type Base struct { ID int }
type Extended struct {
    Base
    Name string
}', 'Go', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Go: Panic and Recover', 'Exception-like handling.', 'defer func() {
    if r := recover(); r != nil { fmt.Println("Recovered") }
}()
panic("Error!")', 'Go', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Go: Environment Var Lookup', 'Safe config reading.', 'if val, ok := os.LookupEnv("DB_URL"); ok {
    fmt.Println(val)
}', 'Go', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Go: Sorting Slices', 'Custom sort logic.', 'sort.Slice(users, func(i, j int) bool {
    return users[i].Age < users[j].Age
})', 'Go', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Go: Flag Module (CLI)', 'Parsing command line flags.', 'port := flag.Int("port", 8080, "server port")
flag.Parse()
fmt.Println(*port)', 'Go', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Go: Mutex Locking', 'Protecting shared state.', 'var mu sync.Mutex
mu.Lock()
sharedCounter++
mu.Unlock()', 'Go', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
