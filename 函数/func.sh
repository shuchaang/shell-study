#!/bin/bash

this_pid=$$

ps -ef|grep nginx|grep -v grep|grep -v $this_pid &> /dev/null


# 0为启动正常
while true
do
if [ $? -eq 0 ];then
    echo "nginx is running well"
    sleep 3
else
    echo "begin to start nginx"
    systemctl start nginx
fi
# $? 上个命令的退出状态，或函数的返回值。

echo $? 
done