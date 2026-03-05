-- V17__Import_C_Snippets.sql

INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('C: Hello World', 'The classic entry point.', '#include <stdio.h>
int main() {
    printf("Hello, C!\n");
    return 0;
}', 'C', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C: Dynamic Memory Allocation', 'Using malloc and free.', 'int *ptr = (int*)malloc(5 * sizeof(int));
if (ptr != NULL) {
    ptr[0] = 10;
    free(ptr);
}', 'C', 'Memory', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C: Pointer Arithmetic', 'Navigating arrays via pointers.', 'int arr[] = {10, 20, 30};
int *p = arr;
printf("%d", *(p + 1)); // Prints 20', 'C', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C: Struct Definition', 'Grouping data types.', 'struct User {
    int id;
    char name[50];
};
struct User u = {1, "Admin"};', 'C', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C: File I/O (Write)', 'Writing to a text file.', 'FILE *f = fopen("test.txt", "w");
if (f) {
    fprintf(f, "Hello File");
    fclose(f);
}', 'C', 'FileSystem', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C: Function Pointer', 'Passing behavior as data.', 'void greet() { printf("Hi"); }
void (*func_ptr)() = greet;
func_ptr();', 'C', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C: Command Line Arguments', 'Accessing argc and argv.', 'int main(int argc, char *argv[]) {
    if (argc > 1) printf("Arg: %s", argv[1]);
    return 0;
}', 'C', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C: Preprocessor Macros', 'Defining constants and inline code.', '#define SQUARE(x) ((x) * (x))
int val = SQUARE(5);', 'C', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C: String Manipulation (strcpy)', 'Copying strings safely.', 'char src[] = "Hello";
char dest[20];
strcpy(dest, src);', 'C', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C: Linked List Node', 'Basic data structure setup.', 'struct Node {
    int data;
    struct Node *next;
};', 'C', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C: Typedef Usage', 'Aliasing complex types.', 'typedef unsigned long ulong;
ulong count = 1000;', 'C', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C: Bitwise Operations', 'Manipulating bits.', 'int flags = 0x01 | 0x02; // Binary OR
int is_set = flags & 0x01;', 'C', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C: Static Variable in Function', 'Persistent local state.', 'void counter() {
    static int count = 0;
    count++;
}', 'C', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C: Unions Example', 'Memory-efficient data structures.', 'union Data {
    int i;
    float f;
};', 'C', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C: Extern Keyword', 'Sharing variables across files.', 'extern int global_config;', 'C', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C: Header Guards', 'Preventing multiple inclusion.', '#ifndef MY_HEADER_H
#define MY_HEADER_H
// declarations
#endif', 'C', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C: Quick Sort (qsort)', 'Using standard library sorting.', 'int cmp(const void *a, const void *b) {
    return (*(int*)a - *(int*)b);
}
qsort(arr, n, sizeof(int), cmp);', 'C', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C: Memory Copy (memcpy)', 'Efficiently moving memory blocks.', 'memcpy(dest, src, sizeof(src));', 'C', 'Memory', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C: Signal Handling', 'Intercepting system signals.', '#include <signal.h>
void handle(int sig) { printf("Caught %d", sig); }
signal(SIGINT, handle);', 'C', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('C: Math Library Usage', 'Mathematical computations.', '#include <math.h>
double res = pow(2.0, 3.0); // 8.0', 'C', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
