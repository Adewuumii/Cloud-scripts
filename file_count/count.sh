#!/usr/bin/bash



if [ -z "$1" ] || [ ! -d "$1" ]; then

    read -p "Enter a valid path to a directory: " dir

    while [ -z "$dir" ] || [ ! -d "$dir" ]; do

        /usr/bin/echo "Invalid. You must enter a valid directory path"

        read -p "Enter a valid path to a directory: " dir

    done

else

    dir="$1"

fi

count=$(find "$dir" -maxdepth 1 -type f | wc -l)

echo "There are $count files in the $dir directory."



