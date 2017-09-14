#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/jre/bin:/root/bin
export PATH

echo -e "You should input 2 numbers,I will cross them!\n"
read -p "first number:" firstnu
read -p "second number:" secnu
total=$(($firstnu*$secnu))
echo -e "\nThe result of $firstnu * $secnu is ==> $total"
