#!/bin/bash
#Program:
#	This program shows the user's choice 
#History:
#2020/01/01 Michael first release 
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input (y/n): " yn && echo "$yn"
if [ "$yn" = "Y" -o "$yn" = "y" ]; then
	echo "OK, continue" 
	exit 0
fi
if [ "$yn" = "N" -o "$yn" = "n" ]; then
	echo "OK, interrupt!!"
       	exit 0
fi
echo "I don't know your choice" && exit 0
