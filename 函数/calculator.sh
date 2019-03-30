#!/bin/bash

function calcu
{
    echo $1
    echo $2
    echo $3
    case $2 in
        +)
            echo $1 + $3|bc
            ;;
        -)
            echo $1-$3|bc
            ;;
        \*)
            echo $1*$3|bc
            ;;
        /)
            echo "scale=4;$1/$3"|bc
            ;;
    esac
}

calcu $1 $2 $3