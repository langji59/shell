#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/jre/bin:/root/bin
export PATH

s=0
i=0

while [ "$i" != "100" ]
do
    i=$(($i+1))
    s=$(($s+$i))
done
echo "The result of '1+2+3+...+100' is ==> $s"
