#!/bin/bash
#案例一 判断“ok”是否等于”ok“
if [ "ok"="ok" ]
then 
	echo "相等"
fi
#案例二 23是否大于22
if [ 23 -ge 22 ]
then 
	echo "23大于22"
fi
#案例三 判断/opt/shcode/aaa.txt 文件是否存在
if [ -f /opt/shcode/aaa.txt ]
then 
	echo "存在aaa.txt"
elif [ -f /opt/shcode/bbb.txt ]
then 
	echo "存在bbb.txt"
else 
	echo "不存在aaa.txt和bbb.txt"
fi

#其他小案例
if [ ]
then
	echo "为真"
else
	echo "为假"
fi

if [ curry ]
then
	echo "为真"
else
	echo "为假"
fi
