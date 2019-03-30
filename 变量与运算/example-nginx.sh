#!/bin/bash


# ps -ef|grep nginx|grep -v grep
# ps -ef|grep nginx|grep -v grep|wc -l

nginx_process_num=$(($(ps -ef|grep nginx|grep -v grep|grep -v sh|wc -l)+0))

echo $nginx_process_num
if [ $nginx_process_num -eq 0 ];then
    echo "nginx process is dead"
    systemctl start nginx 
fi

