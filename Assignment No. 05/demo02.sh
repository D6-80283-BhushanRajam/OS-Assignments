#!/bin/bash

# Function to check if a number is prime
is_prime() {
    num=$1
    # 0 and 1 are not prime numbers
    if [ $num -lt 2 ]; then
        return 1
    fi
    # Check for factors from 2 to the square root of the number
    for (( i=2; i*i<=$num; i++ )); do
        if [ $((num % i)) -eq 0 ]; then
            return 1  # Not a prime number
        fi
    done
    return 0  # Prime number
}

# Prompt the user for input
read -p "Enter a number: " number

# Call the is_prime function and check the result
if is_prime "$number"; then
    echo "$number is a prime number."
else
    echo "$number is not a prime number."
fi

