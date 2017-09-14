#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/jre/bin:/root/bin
export PATH

case $1 in
    "hello")
        echo "Hello,how are you?"
        ;;
    "")
        echo "You MUST input parameters,ex > {$0 someword}"
        ;;
    *)
        echo "The only parameter is 'hello',ex > {$0 hello}"
        ;;
esac
