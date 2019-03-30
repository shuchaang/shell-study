#! bin/bash

num1=10
num2=$num1+10
echo $num2  #10+10
declare -i num3=$num1+10
echo $num3  #20

expr $num1 \< $num3

n1=10
n2=20
expr $n1 + $n2
expr $num1 + $num3
n3=`expr $n1 + $n2`
echo $n3


## 练习: 输入一个正整数N.计算1+。。。+n的和,需要校验N是否为正整数


while true
do
    read -p "请输入一个正整数:" N
    sum=0
    expr $N + 1 &> /dev/null
    if [ $? -eq 0 ];then
        if [ `expr $N \> 0` -eq 1 ]; then
            for((i=1;i<=$N;i++))
            do
                sum=`expr $sum + $i`
            done
            echo "1+2+...+$N=$sum"
            exit
        else
            exit
        fi
    fi
done    
