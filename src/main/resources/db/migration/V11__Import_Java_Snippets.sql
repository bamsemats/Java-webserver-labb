-- V11__Import_Java_Snippets.sql

INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('Java: Stream Filter and Map', 'Modern collection processing.', 'List<String> names = Arrays.asList("Alice", "Bob", "Charlie");
List<Integer> lengths = names.stream()
    .filter(s -> s.startsWith("A"))
    .map(String::length)
    .collect(Collectors.toList());', 'Java', 'Streams', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Java: Optional Usage', 'Avoiding null pointer exceptions.', 'Optional<String> name = Optional.ofNullable(getName());
String result = name.orElse("Default Name");', 'Java', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Java: CompletableFuture Async', 'Asynchronous programming.', 'CompletableFuture.supplyAsync(() -> "Hello")
    .thenApply(s -> s + " World")
    .thenAccept(System.out::println);', 'Java', 'Async', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Java: Records (Java 14+)', 'Immutable data classes.', 'public record User(Long id, String name, String email) {}', 'Java', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Java: Try-With-Resources', 'Automatic resource management.', 'try (BufferedReader br = new BufferedReader(new FileReader("test.txt"))) {
    return br.readLine();
}', 'Java', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Java: HTTP Client (Java 11+)', 'Built-in HTTP requests.', 'HttpClient client = HttpClient.newHttpClient();
HttpRequest request = HttpRequest.newBuilder()
    .uri(URI.create("https://api.github.com"))
    .build();
HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());', 'Java', 'Networking', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Java: Lambda Expressions', 'Functional interface implementation.', 'Runnable r = () -> System.out.println("Running...");
new Thread(r).start();', 'Java', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Java: Custom Exception', 'Defining domain-specific errors.', 'public class ResourceNotFoundException extends RuntimeException {
    public ResourceNotFoundException(String message) {
        super(message);
    }
}', 'Java', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Java: Singleton Pattern (Enum)', 'Thread-safe singleton.', 'public enum MySingleton {
    INSTANCE;
    public void doSomething() {}
}', 'Java', 'Patterns', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Java: Read All Lines from File', 'Quick file reading.', 'List<String> lines = Files.readAllLines(Paths.get("data.txt"));', 'Java', 'FileSystem', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Java: Switch Expressions (Java 12+)', 'Modern switch syntax.', 'int numLetters = switch (day) {
    case MONDAY, FRIDAY, SUNDAY -> 6;
    case TUESDAY -> 7;
    default -> 8;
};', 'Java', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Java: Predicate Interface', 'Functional filtering logic.', 'Predicate<String> isLong = s -> s.length() > 10;
boolean result = isLong.test("Hello World!");', 'Java', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Java: Map computeIfAbsent', 'Efficient map updates.', 'Map<String, List<String>> map = new HashMap<>();
map.computeIfAbsent("key", k -> new ArrayList<>()).add("value");', 'Java', 'Collections', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Java: LocalDateTime Formatting', 'Modern date/time handling.', 'LocalDateTime now = LocalDateTime.now();
DateTimeFormatter fmt = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
System.out.println(now.format(fmt));', 'Java', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Java: Generic Method', 'Type-safe reusable methods.', 'public <T> T getFirst(List<T> list) {
    return list.isEmpty() ? null : list.get(0);
}', 'Java', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Java: Reflection - Get Class methods', 'Introspecting objects.', 'Method[] methods = MyClass.class.getDeclaredMethods();
for (Method m : methods) System.out.println(m.getName());', 'Java', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Java: Thread Pool (Executors)', 'Managing concurrent tasks.', 'ExecutorService executor = Executors.newFixedThreadPool(10);
executor.submit(() -> System.out.println("Task running"));', 'Java', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Java: StringBuilder Usage', 'Efficient string concatenation.', 'StringBuilder sb = new StringBuilder();
for (int i=0; i<10; i++) sb.append(i).append(",");
String result = sb.toString();', 'Java', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Java: Comparable Interface', 'Defining natural sort order.', 'public class User implements Comparable<User> {
    private int age;
    public int compareTo(User o) { return Integer.compare(this.age, o.age); }
}', 'Java', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Java: Text Blocks (Java 15+)', 'Multi-line string literals.', 'String html = """
    <html>
        <body>
            <h1>Hello World</h1>
        </body>
    </html>
    """;', 'Java', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
