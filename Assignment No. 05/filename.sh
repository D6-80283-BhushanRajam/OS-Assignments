#!/bin/bash

#if [ "$#" -ne 1 ]; then
 #   echo "Usage: $0 filename"
  #  exit 1
#fi


demo06="$1"


if [ -e "$demo06" ]; then
    
    last_modified=$(stat -c "%y" "$demo06")

    echo "Last modification time of $demo06: $last_modified"
else
    echo "File $demo06 does not exist."
fi
