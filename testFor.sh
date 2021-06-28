#!/bin/bash
#案例1 循环打印命令行输入的所有的参数
#$*是把参数当做一个整体 $@是把命令行参数分别对待
for i in "$*"
do 
	echo "num is $i"
done

for i in "$@"
do 
	echo "num is $i"
done
