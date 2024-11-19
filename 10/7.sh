#!/bin/bash
#检测本机当前用户是否为超级管理员,如果是管理员,则使用 yum 安装 vsftpd,如果不是,则提示您非管理员(使用字串对比版本)

if [ $USER = "root" ];then
	echo "install vsftpd."
else 
	echo "no permission."
fi

if [ $UID -eq 0 ];then
	echo "install vsftpd."
else 
	echo "no permission."
fi

