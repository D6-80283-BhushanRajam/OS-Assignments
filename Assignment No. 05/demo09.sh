#!/bin/bash

read -p "Enter the basic salary: " basic_salary

da_percent=40
hra_percent=20

da=$(echo "scale=2; $basic_salary * $da_percent / 100" | bc)
hra=$(echo "scale=2; $basic_salary * $hra_percent / 100" | bc)

gross_salary=$(echo "$basic_salary + $da + $hra" | bc)

echo "Gross Salary: $gross_salary"

