#!/bin/bash

ps -ef | grep etlTemplate_ | grep -v grep | grep -v root | awk '{print $2}' | xargs kill -9

logName=/home/dayeh/logT.`date +%Y%m%d%H%M`

cd ~

ls -lt etlTemplate_*.jar|head -1|awk '{print $9}'|xargs -I {} nohup java -jar  -Xms1024m -Xmx512m -Dfile.encoding=UTF-8 -Dspring.profiles.active=uat {} >$logName 2>&1 &

ps -aux | grep etlTemplate_ | grep -v root

