#!/bin/bash
# 实时监控本机内存和硬盘剩余空间,剩余内存小于500M,根分区剩余空间小于1000M时,发送报警邮件给root管理员

free_mem=`free -m | awk '/^Mem/{print $NF}'`
free_disk=`df -m | awk '$6~/^\/$/ {print $4}'`

while true 
do
	if [ $free_mem -lt 500 ] || [ $free_disk -lt 1000 ];then
		mail -s "Warning!"  root << EOF
		Insufficient resources,资源不足	
EOF
	fi
sleep 5
done
