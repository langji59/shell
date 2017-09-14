#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/jre/bin:/root/bin
export PATH

users=$(cut -d ':' -f 1 /etc/passwd)
row=1
for user in $users
do
    echo "The $row account is \"$user\""
    row=$(($row+1))
done
