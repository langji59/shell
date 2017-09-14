#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/jre/bin:/root/bin
export PATH

# 1. 让用户输入文件名，并取得fileuser这个变量;
echo -e "I will use 'touch' command to create 3 files."	# 纯粹显示信息
read -p "Please input your filename: " fileuser		# 提示用户输入

# 2. 为了避免用户随意按[Enter]，利用变量功能分析文件名是否有设置
filename=${fileuser:-"filename"}			# 开始判断有否配置文件名

# 3. 开始利用date命令来取得所需的文件名
date1=$(date --date='2 days ago' +%Y%m%d)		# 前两天的日期
date2=$(date --date='1 days ago' +%Y%m%d)		# 前一天的日期
date3=$(date +%Y%m%d)					# 今天的日期
file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}

# 4. 创建文件名
touch "$file1"
touch "$file2"
touch "$file3"
