#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/jre/bin:/root/bin
export PATH

read -p "Please input your number: " num

num_test=$(echo $num | grep [1-9][0-9]*)
if [ "$num_test" == "" ]; then
    echo "Wrong number"
    exit 1
fi

sum=0
for ((i=1; i<=$num; i++))
do
    sum=$(($sum+$i))
done

echo "The result is ==> $sum"
