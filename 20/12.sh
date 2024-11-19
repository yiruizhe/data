#!/bin/bash
# 192.168.1.0/24 status

# for version
for i in 192.168.1.{1..254};do
	ping -i 0.3 -c 2 -W 1 $i &> /dev/null
	if [ 0 -eq $? ];then
		echo "${i} is online."
	else 
		echo "${i} is offline."
	fi
done

# while version
i=1
while [ $i -lt 255 ]
do
	ping -u 0.3 -c 2 -W 1 &> /dev/null
	if [ 0 -eq $? ];then
		echo "${i} is online."
	else 
		echo "${i} is offline."
	fi
	
done

