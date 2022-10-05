#!/bin/bash

mailto="manishankar1861999@gmail.com"


dused=$(df -H |grep "^/dev/sda2" |awk '{print $5}'|sed 's/%//g')
echo $dused
if [ $dused -ge 30 ]; then
  echo "The disk storage is used ${dused}%!"|mail -s "Alert: Disk Storage" $mailto
fi
