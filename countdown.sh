#! /usr/bin/bash
date1=`date +%s`;
while true; do
    clear
    echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r";
    sleep 0.1
done
