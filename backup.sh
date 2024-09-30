#!/bin/bash/
tar -zcf ~/scheduling-tasks-cron/daily/backusssp_$(date +%y%m%d).tar.gz -C ~/exemple . 
find ~/scheduling-tasks-cron/daily/* -mtime +7 -delete
rsync -a --delete /root/scheduling-tasks-cron/daily root@161.35.143.122:~/scheduling-tasks-cron/daily

