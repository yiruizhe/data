#!/bin/bash

# 脚本生成一个 100 以内的随机数,提示用户猜数字,根据用户的输入,提示用户猜对了,
# 猜小了或猜大了,直至用户猜对脚本结束。

# RANDOM 为系统自带的系统变量,值为 0‐32767的随机数
# 使用取余算法将随机数变为 1‐100 的随机数

random=`expr $[$RANDOM%100] + 1`

while true;do
	read -p "输入您的数字:" cai
	if [ $cai -eq $random ];then
		echo "猜对了!"
		exit
	elif [ $cai -lt $random ];then
		echo "小了."
	else
		echo "大了."	
	fi
done

