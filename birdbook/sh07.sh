#!/bin/bash
#Program
#	Program shows the script name, Parameters....
#History
#2020/01/01 Michael first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "The scripts name is =====> $0"
echo "The total patameter number is ====> $#"
[ "$#" -lt 2 ] && echo "The number of patameter is less than 2. Stop here." \ && exit 0
echo "Your whole patameter is ===> '$@'"
echo "The 1st parameter is ===> $1"
echo "The 2nd patameter is ===> $2"
