#!/bin/bash
#program:
# Program creates three files,which named by user's input and late cammand.
# History :
# 2019/12/30 Michael  First release
PATH=/bin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~bin
export PATH
echo -e "I will use 'touch' command to create 3 files."
read -p "Please input your filename:" fileuser
filename=${filename:-"filename"}
data1=$(date --date'2 days ago'+%Y%m%d)
data2=$(date --date'1 days ago'+%Y%m%d)
date3=$(date +%Y%m%d)
file1=$(filename)${date1}
file2=$(filename)${date2}
file3=$(filename)${date3}
#4、将文档建立
touch "${file1}"
touch "${file2}"
touch "${file3}"



