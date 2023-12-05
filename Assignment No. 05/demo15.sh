#!/bin/bash

# Number of rows in the pattern
rows=5

# Outer loop for the number of rows
for ((i=1; i<=rows; i++))
do
    # Inner loop for printing '*' in each row
    for ((j=1; j<=i; j++))
    do
        echo -n "* "
    done

    # Move to the next line after each row is printed
    echo ""
done

