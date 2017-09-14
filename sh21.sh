#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/bin:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/jre/bin:/root/bin
export PATH

read -p "Please input your birthday: " birthday

birthday_test=$(echo $birthday | grep '[0-9]\{4\}')
if [ "$birthday_test" == "" ]; then
    echo "Wrong birthday.ex > '0701'"
    exit 1
fi

nowday=$(date +%m%d)

function count(){
    first_seconds=$(date --date="$1" +%s)
    second_seconds=$(date --date="$2" +%s)
    left_seconds=$(($first_seconds-$second_seconds))
    left_days=$(($left_seconds/60/60/24))
    echo "还有$left_days天过生日"
}

if [ "$birthday" == "$nowday" ]; then
    echo "Happy birthday to you!"
elif [ "$birthday" -gt "$nowday" ]; then
    nowyear=$(date +%Y)
    count ${nowyear}${birthday} ${nowyear}${nowday}
else
    nowyear=$(date +%Y)
    nextyear=$(($nowyear+1))
    count ${nextyear}${birthday} ${nowyear}${nowday}
fi
