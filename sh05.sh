#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/jre/bin:/root/bin
export PATH

# 1. 让用户输入文件名，并判断用户是否输入字符串
echo -e "Please input a filename,I will check the filename's type and permission.\n\n"
read -p "Input a filename: " filename
test -z $filename && echo "You MUST input a filename." && exit 0
# 2. 判断文件是否存在，不存在则显示信息并结束脚本
test ! -e $filename && echo "The filename '$filename' DO NOT exist" && exit 0
# 3. 开始判断文件类型与属性
test -f $filename && filetype="regulare file"
test -d $filename && filetype="directory"
test -r $filename && perm="readable"
test -w $filename && perm="$perm writable"
test -x $filename && perm="$perm executable"
# 4. 开始输出信息
echo "The filename: $filename is a $filetype"
echo "And the permissions are : $perm"
