#!/bin/bash
# Đây là ví dụ khi backup logs của UT-IT
path="/var/log/AutomationTest/"
logs_cloneIT="test_IT.log"
logs_cloneUT="test_UT.log"

current_date=$(date +"%y%m%d")

newlogs_cloneIT="$current_date"_"$logs_cloneIT"
newlogs_cloneUT=$current_date"_"$logs_cloneUT

echo "tên file IT mới: " $path$newlogs_cloneIT

cp $path$logs_cloneUT $path$newlogs_cloneUT
cp $path$logs_cloneIT $path$newlogs_cloneIT

find . -type f -name "*test_UT*" -mtime +7 -delete
