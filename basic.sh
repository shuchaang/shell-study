#!/bin/bash

## 变量删除 替换

v1="i love you do you love me"
echo $v1
v2=${v1#*ov}
echo $v2
v3=${v1##*ov}
echo $v3

v4=${v1%ov*}
echo $v4
v5=${v1%%ov**}
echo $v5


v6=${v1/love/hate}
echo $v6
v7=${v1//love/hate}
echo $v7


# 字符串长度

len=${#v1}
echo $len
#len=`expr length "$v1"`  mac使用expr会有问题
# echo $len

#获取字符位置 不是子串位置

#i1=`expr index "$v1" love` 
#mac  不行
#echo $i1


## 获取子串  必须从头开始
#sublen=`expr match "$v1" app`
#echo $sublen


echo ${v1:10}
echo ${v1:1:10}
echo ${v1: -4}


# 获取用户所有用户

cat /etc/passwd | cut -d ":" -f 1

# 根据系统时间计算今年或明年
y=$(($(date +%Y)+1))
echo $y


echo $((20+30))