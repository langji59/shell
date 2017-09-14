#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/jre/bin:/root/bin
export PATH

# 1. 先做一些告知的操作而已
echo "Now,I will detect your Linux server's services!"
echo -e "The www,ftp,ssh,and mail will be detect!\n"

# 2. 开始进行一些测试的工作，并且也输出一些信息
testing=$(netstat -tuln | grep ":80")    # 检测80在否
if [ "$testing" != "" ]; then
    echo "WWW is running in your system."
fi

testing=$(netstat -tuln | grep ":22")
if [ "$testing" != "" ]; then
    echo "SSH is running in your system."
fi

testing=$(netstat -tuln | grep ":21")
if [ "$testing" != "" ]; then
    echo "FTP is running in your system."
fi

testing=$(netstat -tuln | grep ":25")
if [ "$testing" != "" ]; then
    echo "Mail is running in your system."
fi
