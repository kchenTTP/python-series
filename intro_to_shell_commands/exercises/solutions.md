# Shell Command Exercise Solutions

This guide provides detailed solutions, explanations, and common pitfalls for each exercise.

## Exercise 1: Basic Navigation and File Creation

```bash
mkdir practice
cd practice
mkdir documents images
ls
cd documents
pwd
cd ..
```

**Explanation:**

- `mkdir practice`: Creates a new directory
- `cd practice`: Changes into the new directory
- `mkdir documents images`: Creates two directories at once
- `ls`: Lists directory contents
- `cd documents`: Moves into documents directory
- `pwd`: Prints current working directory
- `cd ..`: Moves back up one level

**Common Mistakes:**

- Forgetting to `cd` into the practice directory first
- Using spaces in directory names without quotes
- Not using proper path separators

## Exercise 2: Working with Files

```bash
touch notes.txt
echo "Hello, Shell!" > notes.txt
cp notes.txt backup.txt
mv backup.txt documents/
ls
ls documents
```

**Explanation:**

- `touch`: Creates an empty file
- `echo` with `>`: Creates/overwrites file with content
- `cp`: Creates a copy of the file
- `mv`: Moves the file to a new location
- `ls`: Verifies the operations

**Alternative Approaches:**

```bash
# Create and write in one step
echo "Hello, Shell!" > notes.txt

# Copy and move in one step
cp notes.txt documents/backup.txt

# Using full paths
cp /path/to/notes.txt /path/to/documents/backup.txt
```

**Common Mistakes:**

- Using `>` instead of `>>` when appending
- Not checking if destination exists
- Moving files without proper permissions

## Exercise 3: File Content Manipulation

```bash
# Using multiple echo commands
echo "apples" > shopping.txt
echo "bananas" >> shopping.txt
echo "oranges" >> shopping.txt
cat shopping.txt
```

**Explanation:**

- `>>`: Appends to file instead of overwriting

**Alternative Approaches:**

```bash
touch shopping.txt
echo -e "apples\nbananas\noranges" > shopping.txt
cat shopping.txt
echo "grapes" >> shopping.txt
cat shopping.txt
```

- `-e` flag: Enables interpretation of backslash escapes
- `\n`: Creates new lines in the text

**Common Mistakes:**

- Using `>` instead of `>>` for appending

## Exercise 4: Pipelines and Redirection

```bash
echo -e "Zack\nAmy\nJohn\nSarah\nMike" > names.txt
sort names.txt > sorted_names.txt
grep "Bob" names.txt
cat names.txt | head -n 3
```

**Explanation:**

- `sort`: Alphabetically sorts input
- `|`: Pipes output between commands

**Common Mistakes:**

- Mixing up `>` and `>>`

## Exercise 5: File Finding and Counting

```bash
touch file1.txt file2.txt note.md data.csv
find . -name "*.txt" | wc -l
find . -name "*.txt" > txt_files.txt
find . -type f | wc -l
```

**Explanation:**

- `-type f`: Finds only regular files
- `wc -l`: Counts lines of output

**Alternative Approaches:**

```bash
# Using ls with grep
ls -l | grep "\.txt$" | wc -l

# Using find with printf
find . -name "*.txt" -printf "\n" | wc -l

# Using find with exec
find . -name "*.txt" -exec echo {} \; | wc -l
```

**Common Mistakes:**

- Not escaping dots in grep patterns
- Including hidden files unintentionally
- Incorrect time ranges with -mtime

## Exercise 6: Searching Command Manuals

```bash
# Searching for specific options in manuals and saving to files
man grep | grep -- "-i" > grep_options.txt
man awk | grep -- "-F" > awk_options.txt
man sed | grep -- "-n" > sed_options.txt
```

**Explanation:**

- `man <command>`: Displays the manual for the specified command.
- `grep -- "<pattern>"`: Filters the manual page output to show lines with the specified option.
- `> <filename>`: Redirects the filtered output to a text file.

**Alternative Approaches:**

```bash
# Using additional options to refine the search
man grep | grep -A 2 "--help" > grep_help.txt   # Show 2 lines after matches
man awk | grep -B 1 "-v" > awk_invert.txt       # Show 1 line before matches
man sed | grep -C 3 "-e" > sed_examples.txt     # Show 3 lines around matches
```

**Common Mistakes:**

- Not using `--` to indicate options with grep (e.g., `grep -- "-i"`)
- Omitting quotes around options that include special characters

