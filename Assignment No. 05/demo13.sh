#!/bin/bash

# Function to convert text to reverse case
reverse_case() {
    echo "$1" | tr 'a-zA-Z' 'A-Za-z'
}

# Input file names from the user
read -p "Enter the first file name: " first_file
read -p "Enter the second file name: " second_file

# Check if the first file exists
if [ ! -e "$first_file" ]; then
    echo "Error: File '$first_file' does not exist."
    exit 1
fi

# Read the contents of the first file and convert to reverse case
content=$(reverse_case "$(cat "$first_file")")

# Append the reversed case content to the second file
echo "$content" >> "$second_file"

echo "Contents in reverse case of '$first_file' appended to '$second_file'."

