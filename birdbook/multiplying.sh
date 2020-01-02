#! /bin/bash
#Program:
#	user input 2 integers number:programm will cross these two nmbrts
# Hsitory:
#2015/12/30 Micaheal First release 
PATH=/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
echo -e "You SHOULD input 2 numbers , I will muttiplying them! \n"
read -p "first number:" firstnu
read -p "secend number:" secnu
total=$((${firstnu}*${secnu}))
echo -e "\nThe result of ${firstnu}x${secnu} is ==> ${total}"
