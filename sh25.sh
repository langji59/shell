#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/jre/bin:/root/bin
export PATH

read -p "金字塔层数:" num

# 校验必须为数字
num_test=$(echo "$num" | grep "[1-9][0-9]*")
if [ "$num_test" == "" ]; then
    echo "输入数字，脑残"
    exit 1
fi

for i in $(seq 1 $num)
do
    for j in $(seq 1 $(($num-$i)))
    do
        echo -n " "
    done
    for z in $(seq 1 $((2*$i-1)))
    do
        echo -n "*"
    done
    echo ""
done
