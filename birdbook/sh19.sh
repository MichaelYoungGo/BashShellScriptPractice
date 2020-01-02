#!/bin/bash
#Program:
#	Try do caculate 1+2+3+....+${your_input}
#History
#2020/01/02 Michael first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH


read -p "Please input a number, I will count for 1+2+3+....your_input:" nu

s=0
for (( i=1; i<=$nu; i=i+1 ))
do
	s=$(($s+$i))
	#echo "the i value $i"
	#echo "the s value $s"
done
echo "The result of '1+2+3+.....+$nu is ====> $s'"
