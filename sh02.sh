#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/jre/bin:/root/bin
export PATH

read -p "Please input your first name:" firstname	# 提示用户输入 
read -p "Please input your last name:" lastname		# 提示用户输入
echo -e "\nYour full name is $firstname $lastname"	# 结果由屏幕输出
