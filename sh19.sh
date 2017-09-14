#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/jre/bin:/root/bin
export PATH

read -p "Please input a number,I will count for 1+2+...+your_input: " nu

nu_test=$(echo $nu | grep '[1-9][0-9]*')
if [ "$nu_test" == "" ]; then
    echo "Wrong number..."
    exit 1
fi

s=0
for ((i=1; i<=$nu; i++))
do
    s=$(($s+$i))
done

echo "The result of '1+2+3+...+$nu' is ==> $s"
