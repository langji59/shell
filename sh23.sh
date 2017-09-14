#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/jre/bin:/root/bin
export PATH

filename="/root/test/logical"

if [ ! -e "$filename" ]; then
    echo "$filename not exist"
    touch $filename
    exit 1
fi

if [ -f "$filename" ]; then
    echo "$filename is a file"
    rm -f $filename
    mkdir $filename
    exit 2
fi

if [ -d "$filename" ]; then
    echo "$filename is a directory"
    rm -rf $filename
    exit 3
fi
