#!/bin/bash

# Function to check if a number is positive, negative, or zero
check_number() {
    num=$1
    if [ $num -gt 0 ]; then
        echo "$num is positive."
    elif [ $num -lt 0 ]; then
        echo "$num is negative."
    else
        echo "$num is zero."
    fi
}

# Prompt the user for input
read -p "Enter a number: " input_number

# Check if it's a valid integer
if [[ $input_number =~ ^[0-9]+$ ]]; then
    # Call the check_number function and check the result
    check_number "$input_number"
else
    echo "Invalid input. Please enter a valid number."
fi

