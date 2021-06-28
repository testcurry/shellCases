#!/bin/bash
#求1-某个数字的和
SUM=0
for(( i=1;i<=$1;i++ ))
do
	SUM=$[$SUM+$i]
done
echo "1-$1的和为：$SUM"
