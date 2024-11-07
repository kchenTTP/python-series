#! /bin/bash

# Ask for the filename
echo "Enter the filename to search in:"
read filename

# Check if file exists
if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' not found."
    exit 1
fi

# Ask for the word to search
echo "What word do you wish to find?"
read search_word

echo "=== Searching for '$search_word' in '$filename' ==="

# Execute command
grep -n -i "$search_word" "$filename"

# Check if word was found
if [ $? -ne 0 ]; then
    echo "No result found for: $search_word"
fi

