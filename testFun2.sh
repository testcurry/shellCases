#!/bin/bash
#案例1 定义一个函数计算两个参数m+n的和（动态获取）getSum()
#自定义函数
function getSum[(m,n)] 
{
	SUM=$[$m+$n]
	echo "m+n的和为：$SUM"

}

#调用自定义函数
getSum[($1,$2)]
