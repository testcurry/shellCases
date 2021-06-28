#!/bin/sh
#案例1 定义一个函数计算两个参数m+n的和（动态获取）getSum()
#自定义函数
function getSum() {
	SUM=$[$m+$n]
	echo "m+n的和为：$SUM"

}
#输入两个值
read -p "请输入第一个参数的值n=" n

read -p "请输入第二个参数的值m=" m

#调用自定义函数
getSum $n $m
