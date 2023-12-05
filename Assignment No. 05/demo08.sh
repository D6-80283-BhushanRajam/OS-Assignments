#!/bin/bash

# Function to generate the Fibonacci series up to a given number of terms
generate_fibonacci() {
    num_terms=$1
    a=0
    b=1

    echo "Fibonacci series up to $num_terms terms:"
    
    for ((i = 1; i <= num_terms; i++)); do
        echo -n "$a "
        temp=$((a + b))
        a=$b
        b=$temp
    done
    echo
}

# Prompt the user for input
read -p "Enter the number of terms in the Fibonacci series: " input_terms

# Check if it's a valid positive integer
if [[ $input_terms =~ ^[0-9]+$ ]] && [ $input_terms -gt 0 ]; then
    # Call the generate_fibonacci function
    generate_fibonacci "$input_terms"
else
    echo "Invalid input. Please enter a valid positive integer."
fi

