#!/bin/bash
echo "We are going to compare the numbers 5 and 4 using an if else statement"
if [[ 4 > 5 ]]; then
    echo '4 is not greater than 5'
elif [[ 4 == 5 ]]; then
    echo '4 is somehow equal to 5'
else
    echo '4 is less than 5'
fi