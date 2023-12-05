#!/bin/bash

# Function to find the greatest of three numbers
find_greatest() {
    if [ $1 -gt $2 ] && [ $1 -gt $3 ]; then
        echo "$1 is the greatest."
    elif [ $2 -gt $1 ] && [ $2 -gt $3 ]; then
        echo "$2 is the greatest."
    else
        echo "$3 is the greatest."
    fi
}

# Prompt the user for input
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
read -p "Enter the third number: " num3

# Call the function to find the greatest number
find_greatest "$num1" "$num2" "$num3"

