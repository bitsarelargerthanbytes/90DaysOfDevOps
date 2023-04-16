#!/bin/bash
usage()
{
    echo "please enter the name of your directory, the beginning number and the ending number"
    echo "------------------------------------------------------------------------------------"
    echo "example: dirname 1 99"
}
echo "Directory name: $1"
echo "Starting number: $2"
echo "Ending number: $3"

if [ -n "$1" ]
then
  echo "String \"$1\" is not null."
else  
  echo "String \"$1\" is null."
  usage
fi                    # Quote strings within test brackets!

if [[ (("$2" < "$3")) ]]
then
    echo "$2 is lower than $3, continuing script"
else
    usage
fi

echo "----------------------------------------------------------"

mkdir $(printf "/tmp/${1}%02i " $(seq $2 $3))