#!/usr/bin/bash

if [ -z "$1" ]; then

   read -p "Enter a file name: " file

else

   file="$1"

fi

while [ -z "$file" ]; do

   /usr/bin/echo "Invalid input."

   read -p "Enter a file name: " file

done

if [ -e ./"$file" ]; then

   /usr/bin/echo "Yes! The file named \"$file\" exist in this directory."

   /usr/bin/echo "Here is it: "

   /usr/bin/realpath "$file"

else

   /usr/bin/echo "This file does not exist in this directory."

   read -p "Would you like to create it? Y/N: " choice

   case "$choice" in

       Y|y)

            touch "$file"

            /usr/bin/echo "The file named \"$file\" has been created"

            ;;

       N|n)
            /usr/bin/echo "Exiting now..."

            exit 0

            ;;

       *)
            /usr/bin/echo "Invalid choice. Exiting..."

            exit 1

   esac

fi


