#!/bin/bash
SUM=0
i=1
while [ $i -le $1 ]  
do
	SUM=$[$SUM+$i]
	i=$[ $i + 1 ]
done
echo "1-$1的和为：$SUM"
