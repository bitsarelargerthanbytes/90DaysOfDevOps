#!/bin/bash

echo "Enter the first number:"
read num1

echo "Enter the second number:"

read num2


if [ "$num1" -eq "$num2" ]; then
    echo "The numbers are equal."
elif [ "$num1" -gt "$num2" ]; then
    echo "The first number is greater than the second number"
else
    echo "The second number is greater than the first number"
fi
