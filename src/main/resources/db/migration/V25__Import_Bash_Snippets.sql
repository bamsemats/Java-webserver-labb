-- V25__Import_Bash_Snippets.sql

INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('Bash: For Loop over Files', 'Iterating through matching filenames.', 'for f in *.txt; do
    echo "Processing $f"
done', 'Bash', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Bash: Conditional Check (If)', 'Testing file existence.', 'if [ -f "data.csv" ]; then
    echo "Exists"
fi', 'Bash', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Bash: Redirecting Output', 'Saving and appending to files.', 'echo "Log entry" > log.txt
echo "New line" >> log.txt
command > /dev/null 2>&1', 'Bash', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Bash: String Substitution', 'Replacing patterns in variables.', 'str="hello world"
echo ${str//world/mats}', 'Bash', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Bash: Array Declaration and Loop', 'Working with simple lists.', 'names=("Alice" "Bob" "Charlie")
for name in "${names[@]}"; do
    echo "$name"
done', 'Bash', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Bash: Check Command Exit Status', 'Error handling logic.', 'command
if [ $? -eq 0 ]; then
    echo "Success"
else
    echo "Failed"
fi', 'Bash', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Bash: Function with Arguments', 'Reusable script components.', 'greet() {
    echo "Hello $1"
}
greet "Mats"', 'Bash', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Bash: Reading File Line by Line', 'Processing text input.', 'while read -r line; do
    echo "$line"
done < input.txt', 'Bash', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Bash: Command Substitution', 'Using output as variable.', 'now=$(date +"%Y-%m-%d")
echo "$now"', 'Bash', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Bash: Case Statement', 'Handling multiple options.', 'case "$input" in
    "start") echo "Starting..." ;;
    "stop")  echo "Stopping..." ;;
    *) echo "Unknown" ;;
esac', 'Bash', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Bash: Sed Find and Replace', 'Editing files from CLI.', 'sed -i ''s/old/new/g'' data.txt', 'Bash', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Bash: Awk Column Extraction', 'Parsing delimited data.', 'ls -l | awk ''{print $9, $5}''', 'Bash', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Bash: Grep Search', 'Finding text patterns.', 'grep -r "TODO" ./src', 'Bash', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Bash: Extract Filename/Extension', 'Using parameter expansion.', 'file="image.jpg"
name="${file%.*}"
ext="${file##*.}"', 'Bash', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Bash: Trap System Signals', 'Cleanup on script exit.', 'trap "rm temp.txt; exit" INT TERM', 'Bash', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Bash: Check if User is Root', 'Permission validation.', 'if [[ $EUID -ne 0 ]]; then
   echo "Must be root"
   exit 1
fi', 'Bash', 'Security', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Bash: Math with let/bc', 'Performing arithmetic.', 'let "val = 5 * 5"
res=$(echo "scale=2; 10 / 3" | bc)', 'Bash', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Bash: Xargs Parallel Execution', 'Running tasks in parallel.', 'cat urls.txt | xargs -P 4 -n 1 wget', 'Bash', 'Performance', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Bash: Alias Definition', 'Creating shortcut commands.', 'alias ll=''ls -alF''', 'Bash', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('Bash: Env File Loading', 'Importing configuration.', 'if [ -f .env ]; then
    export $(cat .env | xargs)
fi', 'Bash', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
