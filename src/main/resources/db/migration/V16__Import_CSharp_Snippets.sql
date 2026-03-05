-- V16__Import_CSharp_Snippets.sql

INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('C#: LINQ Query Expression', 'Declarative data querying.', 'var scores = new int[] { 97, 92, 81, 60 };
var highScores = from score in scores
                 where score > 80
                 select score;', 'C#', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C#: Async Await Task', 'Asynchronous pattern.', 'public async Task<string> DownloadAsync() {
    using var client = new HttpClient();
    return await client.GetStringAsync("https://example.com");
}', 'C#', 'Async', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C#: Auto-Implemented Properties', 'Compact property syntax.', 'public class User {
    public int Id { get; set; }
    public string Name { get; set; } = "Guest";
}', 'C#', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C#: Lambda Expression', 'Functional anonymous methods.', 'Func<int, int, int> add = (a, b) => a + b;
int result = add(5, 3);', 'C#', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C#: Generic List and ForEach', 'Collection processing.', 'var list = new List<string> { "A", "B" };
list.ForEach(item => Console.WriteLine(item));', 'C#', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C#: Null-Conditional Operator', 'Safe member access.', 'int? length = user?.Name?.Length;', 'C#', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C#: Dictionary with Initialization', 'Key-value mapping.', 'var dict = new Dictionary<int, string> {
    { 1, "One" },
    { 2, "Two" }
};', 'C#', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C#: Extension Method', 'Adding functionality to types.', 'public static class StringExt {
    public static bool IsEmpty(this string s) => string.IsNullOrEmpty(s);
}', 'C#', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C#: Dependency Injection (ASP.NET)', 'Registering services.', 'services.AddScoped<IMyService, MyService>();', 'C#', 'Frameworks', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C#: JSON Serialization (System.Text.Json)', 'Converting objects to JSON.', 'var json = JsonSerializer.Serialize(myObj);
var obj = JsonSerializer.Deserialize<MyType>(json);', 'C#', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C#: Using Declaration (C# 8.0+)', 'Compact resource management.', 'using var stream = new FileStream("f.txt", FileMode.Open);
// Stream closed at end of scope', 'C#', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C#: Pattern Matching (Switch)', 'Modern type/value checking.', 'var msg = obj switch {
    int i => $"Integer {i}",
    string s => $"String {s}",
    _ => "Unknown"
};', 'C#', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C#: Record Type (C# 9.0+)', 'Immutable data objects.', 'public record Person(string First, string Last);', 'C#', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C#: Custom Attribute', 'Adding metadata to code.', '[AttributeUsage(AttributeTargets.Class)]
public class MyInfoAttribute : Attribute { }', 'C#', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C#: Reflection - Get Properties', 'Introspecting types.', 'var props = typeof(MyClass).GetProperties();', 'C#', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C#: Event and EventHandler', 'Basic pub/sub pattern.', 'public event EventHandler ProcessCompleted;
protected virtual void OnComplete() => ProcessCompleted?.Invoke(this, EventArgs.Empty);', 'C#', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C#: String Interpolation', 'Formatted string output.', 'string name = "Mats";
Console.WriteLine($"Hello, {name}!");', 'C#', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C#: Yield Return (Iterator)', 'Custom collection traversal.', 'public IEnumerable<int> GetNumbers() {
    yield return 1; yield return 2;
}', 'C#', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C#: Task.WhenAll', 'Running tasks in parallel.', 'await Task.WhenAll(task1, task2);', 'C#', 'Async', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C#: Indexer Property', 'Array-like access to classes.', 'public string this[int index] {
    get => _data[index];
}', 'C#', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
