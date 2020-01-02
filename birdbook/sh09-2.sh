#!/bin/bash
#Program
#	show "Hello" from $1 ..... by using case .... esac
#History:
#2005/08/29 Michael First Release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

case $1 in
	"hello")
		echo "Hello, how are you?"
		;;
	"")
		echo "You must input paramaters, ex> {$0 someword}"
		;;
	*)
		echo "Usage $0 {hello}"
		;;
esac
