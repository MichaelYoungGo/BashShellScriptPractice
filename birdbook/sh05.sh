#!/bin/hash
#Program
#	User input a filename, program will check the flowing:
#	1.) exit? 2) file/directory? 3) file permitions
#History 
#2020/1/1 Michael first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
echo -e "Please input a filename, I will check the filename's type \
	and permision!!"
read -p "Input a filename:" filename
test -z $filename && echo "You must put a filename!!" && exit 0
#2 判断文件是否存在，若不存在则显示并结束脚本
test ! -e $filename && echo "The filename '$filename' DO NOT exist" && exit 0
test -f $filename && filetype="regulare file"
test -d $filename && filetype="directory"
test -r $filename && perm="readable"
test -w $filename && perm="perm writable"
test -x $filename && perm="perm excutable"
echo "The filename $filename is a $filetype"
echo "And the permision are : $perm"


