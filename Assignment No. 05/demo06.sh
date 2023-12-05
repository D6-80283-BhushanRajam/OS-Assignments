#!/bin/bash

# Function to print the table of a given number
print_table() {
    num=$1
    echo "Table of $num:"
    for ((i = 1; i <= 10; i++)); do
        result=$((num * i))
        echo "$num x $i = $result"
    done
}

# Prompt the user for input
read -p "Enter a number to print its table: " input_number

# Check if it's a valid integer
if [[ $input_number =~ ^[0-9]+$ ]]; then
    # Call the print_table function
    print_table "$input_number"
else
    echo "Invalid input. Please enter a valid number."
fi

