#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 filename"
    exit 1
fi


filename="$1"


if [ -e "$filename" ]; then
    
    last_modified=$(stat -c "%y" "$filename")

    echo "Last modification time of $filename: $last_modified"
else
    echo "File $filename does not exist."
fi

