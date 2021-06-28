#!/bin/bash
#案例一 计算(2+3)*5的值
#使用第一种方式
RES1=$(((2+3)*4))
echo "RES1=$RES1"
#使用第二种方式
RES2=$[(2+3)*4]
echo "RES2=$RES2"
#第三种方式
TEMP=`expr 2 + 3`
echo "temp=$TEMP"

RES3=`expr $TEMP \* 4`
echo "RES3=$RES3"
#案例二 请求出命令行中两个参数的和
SUM=$[$1+$2]
echo "sum=$SUM"
