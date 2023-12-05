#!/bin/bash

# Function to check if a year is a leap year
is_leap_year() {
    year=$1
    # Leap year conditions
    if [ $((year % 4)) -eq 0 ] && [ $((year % 100)) -ne 0 ] || [ $((year % 400)) -eq 0 ]; then
        return 0  # Leap year
    else
        return 1  # Not a leap year
    fi
}

# Prompt the user for input
read -p "Enter a year: " input_year

# Check if it's a valid positive integer
if [[ $input_year =~ ^[0-9]+$ ]]; then
    # Call the is_leap_year function and check the result
    if is_leap_year "$input_year"; then
        echo "$input_year is a leap year."
    else
        echo "$input_year is not a leap year."
    fi
else
    echo "Invalid input. Please enter a valid year."
fi

