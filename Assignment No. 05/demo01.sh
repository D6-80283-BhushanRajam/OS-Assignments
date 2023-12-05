#!/bin/bash

# Prompt the user for input
read -p "Enter the name of a file or directory: " name

# Check if the entered name exists
if [ -e "$name" ]; then
    # Check if it's a file
    if [ -f "$name" ]; then
        echo "$name is a file."
        # Display the size of the file
        size=$(du -h "$name" | cut -f1)
        echo "Size of $name: $size"
    # Check if it's a directory
    elif [ -d "$name" ]; then
        echo "$name is a directory."
        # Display the contents of the directory
        echo "Contents of $name:"
        ls -l "$name"
    else
        echo "$name is neither a file nor a directory."
    fi
else
    echo "$name does not exist."
fi

