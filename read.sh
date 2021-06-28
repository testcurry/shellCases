#!/bin/bash
#案例1：读取从控制台输入一个NUM1的值
read -p "请输入一个NUM1=" NUM1
echo "你输入的NUM1=$NUM1"
#读取控制台输入一个NUM2的值，在5秒内输入，否则超时推出
read -t 10 -p "请在10秒内输入一个NUM2=" NUM2
echo "你输入的NUM2=$NUM2"
