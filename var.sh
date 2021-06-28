#!/bin/bash
#案例1：定义变量A
A=100
echo A=$A
echo "A=$A"
#案例2 撤销变量A
unset A
echo "A=$A"
#案例3：定义静态变量B，不能撤销
readonly B=200
echo "B=$B"
#unset B
echo "B=$B"

:<<!
#将指令返回的结果赋给变量
C=`date`
echo $C
C=$(date)
echo $C
!
echo "tomcat_home=$tomcat_home"
