#!/bin/bash
while :
do
  COUNT=`ps -ef | grep delay-queue |wc -l`
  if [ "$COUNT" -gt 1 ];
  then
    echo "server service is ok"
  else
    echo "server service is not exist"
    nohup delay-queue -c delay-queue.conf > logFile.log 2>&1 &
  fi
  sleep 60
done
#https://zhuanlan.zhihu.com/p/65177353