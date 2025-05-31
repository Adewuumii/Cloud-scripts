#!/usr/bin/bash


sudo /usr/bin/apt update
code1=$?

sudo /usr/bin/apt upgrade -y
code2=$?

timestamp=$(/usr/bin/date)

if [ "$code1" -eq 0 ] && [ "$code2" -eq 0 ]; then

    /usr/bin/echo "apt update and upgrade completed successfully at $timestamp" &>> /home/adewumi/package.txt

else
   [ "$code1" -ne 0 ] &&
    /usr/bin/echo "apt update failed at $timestamp with exit code  $code1" &>> /home/adewumi/package.txt

   [ "$code2" -ne 0 ] &&
    /usr/bin/echo "apt upgrade failed at $timestamp with exit code $code2" &>> /home/adewumi/package.txt

fi


