#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/jre/bin:/root/bin
export PATH

read -p "Please input (Y/N):" yn

if [ "$yn" == "Y" ] || [ "$yn" == "y" ]; then
#if test "$yn" == "Y" -o "$yn" == "y"; then
    echo "OK,continue"
    exit 0
fi
if [ "$yn" == "N" ] || [ "$yn" == "n" ]; then
    echo "Oh,interrupt"
    exit 0
fi

echo "I don't know what your choice is" && exit 0
