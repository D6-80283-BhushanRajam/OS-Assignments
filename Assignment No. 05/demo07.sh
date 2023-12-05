#!/bin/bash


calculate_factorial() {
    num=$1
    factorial=1

    for ((i = 1; i <= num; i++)); do
        factorial=$((factorial * i))
    done

    echo "Factorial of $num is: $factorial"
}


read -p "Enter a number to find its factorial: " input_number

# Check if it's a valid non-negative integer
if [[ $input_number =~ ^[0-9]+$ ]] && [ $input_number -ge 0 ]; then
  
    calculate_factorial "$input_number"
else
    echo "Invalid input. Please enter a valid non-negative integer."
fi

