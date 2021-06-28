#!/bin/bash
echo "当前执行脚本的进程ID=$$"
/opt/shcode/position.sh &
echo "最后一个后台方式运行的进程ID=$!"
echo "最后一个执行的结果$?"
