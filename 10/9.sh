#!/bin/bash
#编写脚本:提示用户输入用户名和密码,脚本自动创建相应的账户及配置密码。如果用户不输入账户名,则提示必须输入账户名并退出脚本;如果用户不输入密码,则统一使用默认的 123456 作为默认密码。

read -p "enter your username:" username

if [ -z $username ];then
	echo "must not null."
	exit 2
fi

stty -echo #关闭shell回显
read -p "enter your password:" password
stty echo

if [ -z $password ];then
	password="123456"
fi

useradd $username

echo $password | passwd $username --stdin

