#!/bin/bash
#Program:
#	You input your demobilization date, I calculate how many days 
#	before you denobilize 
#History:
#2020/01/01 Michael first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin/:/usr/local/sbin:~/bin
export PATH

#1、告知用户程序的用途，并且告知应该输入的日期格式。
echo "This pragram will try to calculate:"
echo "How many days before your delebilization date...."
read -p "Please input the date (YYYYMMDD):" date2
date_d=$(echo $date2 | grep '[0-9]\{8\}')
if [ "$date_d" = "" ]; then
	echo "You input the wrong date formate....."
	exit 1
fi
declare -i date_dem=$(date --date="$date2" +%s)
declare -i date_now=$(date +%s)
declare -i date_total_s=($date_dem-$date_now)
declare -i date_d=($date_total_s/60/60/24)
echo "$date_total_s"
if [ "$date_total_s" -lt "0" ];then
	echo "You had been demobilization before: $((-1*$date_d)) ago"
else
	echo "YOu will demobilize after $date_d days"	
fi










