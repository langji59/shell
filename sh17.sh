#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/jre/bin:/root/bin
export PATH

network="192.168.1."
for sitenu in $(seq 1 100)
do
    ping -c 1 -w 1 ${network}${sitenu} > /dev/null && result=0 || result=1
    if [ "$result" == "0" ]; then
        echo "Server ${network}${sitenu} is UP."
    else
        echo "Server ${network}${sitenu} is DOWN."
    fi
done 
