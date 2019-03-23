#! bin/bash 

string="Bigdata process framework is Hadoop,Hadoop is an open source project"
#执行脚本后,打印这段话,并根据用户输入执行以下功能
# 1. 打印string长度
# 2. 删除所有的haddop
# 3. 替换第一个Hadoop为MapReduce
# 4. 替换全部hadoop为MapReduce
#1234选择功能,q/Q退出

# ------------------------------------

function tips_info
{
    echo $string
    echo "********************"
    echo "1. 打印string长度"
    echo "2. 删除所有的Hadoop"
    echo "3. 替换第一个Hadoop为MapReduce"
    echo "4. 替换全部hadoop为MapReduce"
    echo "********************"
    echo "1234选择功能,q/Q退出"
}


function len
{
    echo "${#string}"
}


function delHadoop
{
    echo "${string//Hadoop/}"
}

function replaceOne
{
    echo "${string/Hadoop/MapReduce}"
}

function replaceAll
{
    echo "${string//Hadoop/MapReduce}"
}

while true

do 
    tips_info
    read -p "please input your choice(1|2|3|4|q|Q):" choice

    case $choice in
        1) 
            len
            ;;
        2)
            delHadoop
            ;;
        3)
            replaceOne
            ;;
        4)
            replaceAll
            ;;
        q|Q)
            exit
            ;;
        *)
            echo "error command"
            ;;
    esac
done 







