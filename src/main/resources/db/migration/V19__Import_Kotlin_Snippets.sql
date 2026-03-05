-- V19__Import_Kotlin_Snippets.sql

INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('Kotlin: Data Class', 'Immutable data storage.', 'data class User(val id: Int, val name: String)', 'Kotlin', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Kotlin: Extension Function', 'Adding behavior to existing types.', 'fun String.isEmail(): Boolean = this.contains("@")', 'Kotlin', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Kotlin: Coroutine Scope Launch', 'Asynchronous execution.', 'GlobalScope.launch {
    delay(1000L)
    println("World!")
}', 'Kotlin', 'Async', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Kotlin: Null Safety (Elvis Operator)', 'Handling nulls concisely.', 'val name = input ?: "Unknown"', 'Kotlin', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Kotlin: Collection Filter and Map', 'Functional stream-like processing.', 'val list = listOf(1, 2, 3)
val evens = list.filter { it % 2 == 0 }.map { it * it }', 'Kotlin', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Kotlin: When Expression', 'Modern switch replacement.', 'val msg = when (status) {
    200 -> "OK"
    404 -> "Not Found"
    else -> "Error"
}', 'Kotlin', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Kotlin: Scoping Functions (apply)', 'Configuring objects.', 'val user = User().apply {
    name = "Mats"
    role = "Admin"
}', 'Kotlin', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Kotlin: String Templates', 'Easy string formatting.', 'val name = "Kotlin"
println("Hello, $name!")', 'Kotlin', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Kotlin: Companion Object', 'Static-like members.', 'class MyApi {
    companion object {
        const val BASE_URL = "https://api.com"
    }
}', 'Kotlin', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Kotlin: Lazy Initialization', 'Thread-safe lazy values.', 'val config by lazy { loadConfig() }', 'Kotlin', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Kotlin: Sealed Class', 'Restricted class hierarchies.', 'sealed class Result {
    data class Success(val data: String) : Result()
    object Loading : Result()
}', 'Kotlin', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Kotlin: Default and Named Arguments', 'Flexible function calls.', 'fun greet(name: String = "Guest", age: Int) { }
greet(age = 25)', 'Kotlin', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Kotlin: Higher-Order Function', 'Accepting functions as params.', 'fun execute(block: () -> Unit) { block() }', 'Kotlin', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Kotlin: Delegation (by)', 'Composition-based delegation.', 'class MyList : List<String> by ArrayList()', 'Kotlin', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Kotlin: Destructuring Declarations', 'Unpacking objects.', 'val (id, name) = user', 'Kotlin', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Kotlin: Reified Type Parameters', 'Runtime access to generic types.', 'inline fun <reified T> printType() { println(T::class.java) }', 'Kotlin', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Kotlin: Ranges and Steps', 'Concise iteration.', 'for (i in 1..10 step 2) { println(i) }', 'Kotlin', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Kotlin: Single-Expression Function', 'Short method syntax.', 'fun sum(a: Int, b: Int) = a + b', 'Kotlin', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Kotlin: Pair and Triple', 'Small generic data holders.', 'val coord = Pair(10, 20)', 'Kotlin', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Kotlin: Collections - groupBy', 'Grouping items by criteria.', 'val groups = list.groupBy { it.category }', 'Kotlin', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
