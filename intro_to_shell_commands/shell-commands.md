# Shell Commands for UNIX-Based Systems

This guide covers essential shell commands used in UNIX-based systems, including Linux and macOS. Some commands can also be used in Windows PowerShell to a certain extent.

---

## **Table Of Contents**

1. [Terminology](#terminology)
2. [File System Navigation](#file-system-navigation)
3. [Flags](#flags)
4. [Help and Manuals](#help-and-manuals)
5. [File Management](#file-management)
6. [File Input/Output](#file-inputoutput)
7. [Command-Line Utilities](#command-line-utilities)
8. [Redirection](#redirection)
9. [Pipelines](#pipelines)
10. [Networking](#networking)
11. [Other Useful Commands](#other-useful-commands)
12. [Third-Party Command-Line Tools](#third-party-command-line-tools)
13. [Shell Scripting](#shell-scripting)

---

## **Terminology**

- **Shell**: The interpreter that processes commands and returns the output.

  - UNIX examples: `bash`, `zsh`, `fish`
  - Windows examples: `cmd`, `powershell`

- **Terminal/Command-Line/Console**: The program that allows you to interact with the shell.

  - Examples of terminal programs:
	  - Default `Terminal` (macOS), `Windows Terminal` (Windows)
	  - `iTerm2` (macOS)
	  - `kitty`
	  - `Hyper`

---

## **File System Navigation**

Commands to explore the file system:

- `ls`: List files and directories in the current or specified directory.
- `pwd`: Print working directory (shows the full path of your current directory).
- `cd`: Change directory.
  
  **File Paths**:

  - **Absolute Path**: Full path from the root directory (e.g., `/home/user/`).
  - **Relative Path**: Path relative to the current directory (e.g., `./documents`).
  - `./`: Refers to the current directory.
  - `../`: Refers to the parent directory.
  - `/`: Refers to the root directory.
  - `~`: Refers to the user's home directory.
  - `-`: Refers to the previous directory.

---

## **Flags**

Flags modify how commands behave:

- Example: `ls -lha`
  - `-l`: Long format (more details like permissions and file size)
  - `-h`: Human-readable sizes (e.g., KB, MB)
  - `-a`: Show hidden files (files starting with `.`)

---

## **Help And Manuals**

Find documentation directly from the command line:

- `--help`: Displays usage information for a command.
  
  Example:

  ```bash
  grep --help
  ```

- `man <command>`: Opens the manual page for the specified command.
  
  Example:

  ```bash
  man history
  ```

---

## **File Management**

Basic commands to create, move, copy, and delete files or directories:

- `mkdir <directory>`: Create a new directory.
- `touch <file>`: Create an empty file or update the timestamp of an existing file.
- `open <directory>`: Open directory in finder/folder.
- `cp <source> <destination>`: Copy files or directories.
- `mv <source> <destination>`: Move or rename files or directories.
- `rm <file>`: Remove files or directories.
- `ln -s <target> <link_name>`: Create a symbolic link.

---

## **File Input/Output**

Commands to view or manipulate file content:

- `echo <text>`: Output text to the console or write it to a file.
- `cat <file>`: Display the contents of a file.
- `less <file>`: View a file's content in a scrollable format.
  - In `less`: Press `/` to search, `q` to quit.
- `head <file> -n <number>`: Display the first few lines of a file (default is 10).
- `tail <file> -n <number>`: Display the last few lines of a file.
- `sed 's/<pattern>/<replacement>/<flag>' <file>`: A stream editor used to perform basic text transformations on an input stream (files or piped input).

  Example:

  ```bash
  sed 's/REPLACE_EMAIL/randomperson@gmail.com/i' template.yaml 
  ```

---

## **Command-Line Utilities**

Useful utilities for working with text or files:

- `find <directory> -name <pattern>`: Search for files and directories.
- `grep <pattern> <file>`: Search for a specific pattern within a file.
- `sort <file>`: Sort the lines in a file (defaults to alphabetical sorting).
- `wc <options> <file(s)>`: Count lines, words, and characters in a file or input stream.

  - Options:
    - `-l`: lines
    - `-w`: words
    - `-m`: characters

  Example:

  ```bash
  wc sample.txt

  wc -l sample.txt

  # count files in current directory
  ls | wc -l
  ```

---

## **Redirection**

Redirect output or input between commands and files:

- `>`: Redirect output to a file (overwrites).

  Example:

  ```bash
  echo "Hello universe!" > greetings.txt
  ```

- `>>`: Append output to a file.

  Example:

  ```bash
  echo "This is Earth! Are there aliens out there?" >> greetings.txt
  ```

- `<`: Use the content of a file as input to a command.

  Example:

  ```bash
  grep "Earth" < greetings.txt
  ```

---

## **Pipelines**

Use the output of one command as the input for another:

- `|`: Pipe the output from one command into another.

  Example: 

  ```bash
  ls -l | grep "txt"
  ```

---

## **Networking**

Basic networking commands you might encounter:

- `ping <hostname>`: Check if a host is reachable.
- `curl <URL>`: Fetch data from a URL.
- `ifconfig`: Display network interfaces and IP addresses.

---

## **Other Useful Commands**

A few more tools that might be helpful:

- `clear`: Clear the terminal window.
- `history`: Display a list of most recent commands.
	- `!<number>`: Execute the command on the input line number.
	- `!!`: Execute most recent command.
- `top`: Display running processes.
- `htop`: An improved version of `top` with a user-friendly interface.
- `df`: Display disk space usage.
- `du`: Show disk usage of files and directories.
- ... more

---

## **Third-Party Command-Line Tools**

In addition to built-in commands, there are several third-party tools that greatly extend the functionality of the command line.

These tools can be installed via the appropriate package manager for your system:

- **macOS**: homebrew
- **Windows**: chocolatey, scoop, or Windows Subsystem for Linux (WSL)
- **Linux**: apt, yum, or pacman

  **Neovim**

  - **Purpose**: A modernized version of the classic vim text editor with better extensibility and performance.
  - **Usage**: Ideal for editing code or text directly in the terminal with powerful features like plugins and scripting support.
  - **Command**: `nvim <file>`
	  - Example: `nvim main.py`

  **fzf**

  - **Purpose**: A general-purpose fuzzy finder for quickly searching files, directories, or command histories.
  - **Usage**: Fuzzy search for items in the terminal, works well when used in conjunction with other tools like git or ls.
  - **Command**: `fzf`
	  - Example: `find . -type f | fzf`

  **tmux**

  - **Purpose**: A terminal multiplexer that allows you to open and manage multiple terminal sessions within a single window and allows session perssistence.
  - **Usage**: Run and manage multiple terminal sessions.
  - **Command**: `tmux`
	  - Example: `tmux new-session -s work`

---

## **Shell-Scripting**

You can use these commands directly in the terminal or include them in shell scripts for automation and repeatability. Here are some shell script examples:

- [Greet the person](`./scripts/greetings.sh`)
- [Backup files to a subdirectory](`./scripts/backup-files.sh`)
- [Show system information](`./scripts/sys-info.sh`)
- [Search for a word in a file](`./scripts/search-line.sh`)

To execute shell scripts use `bash` (need to have `bash` installed) before the filename like this:

  ```shell
  bash greetings.sh
  ```

> 🚨 Do not execute unknown shell scripts on your system, unless you are absolutely sure what the script is doing!

---

This guide covers the basics, but the shell is vast—don't hesitate to explore new commands and tools!

<br>

# Now go to the `exercise.md` file and practice some shell commands! Good luck!

