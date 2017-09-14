#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/jre/bin:/root/bin
export PATH

function printit(){
    echo "Your choice is $1"
}

echo "This program will print your selection!"
#read -p "Input your choice:" choice
#case $choice in
case $1 in
    "one" )
        printit 1
        ;;
    "two" )
        printit 2
        ;;
    "three" )
        printit 3
        ;;
    * )
        echo "Usage $0 {one | two | three}"
        ;;
esac
