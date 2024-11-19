#!/bin/bash
#  2)通过位置变量创建 Linux 系统账户及密码
useradd $1
echo $2 | passwd $1 --stdin 
