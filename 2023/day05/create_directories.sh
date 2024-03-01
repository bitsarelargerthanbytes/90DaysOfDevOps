!#/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <directory_name> <start_number> <end_number>"
    exit 1
fi


directory_name="$1"
start_number="$2"
end_number="$3"


for ((i=start_number; i<=end_number; i++)); do
    mkdir -p "${directory_name}_${i}"

done


echo "Directories created successfull."
