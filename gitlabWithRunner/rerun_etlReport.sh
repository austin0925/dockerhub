#!/bin/bash

ps -ef | grep etlReport_ | grep -v grep | grep -v root | awk '{print $2}' | xargs kill -9

logName=/home/dayeh/logR.`date +%Y%m%d%H%M`

cd ~

ls -lt etlReport_*.jar|head -1|awk '{print $9}'|xargs -I {} nohup java -jar  -Xms1536m -Xmx1536m -Dfile.encoding=UTF-8 -Dspring.profiles.active=uat {} >$logName 2>&1 &

ps -aux | grep etlReport_ | grep -v root

