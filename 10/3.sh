#!/bin/bash
# 每周 5 使用 tar 命令备份/var/log 下的所有日志文件
# 编写备份脚本,备份后的文件名包含日期标签,防止后面的备份将前面的备份数据覆盖
# 注意 date 命令需要使用反引号括起来,反引号在键盘<tab>键上面

if [ ! -d /data/log_backup ];then
	mkdir -p /data/log_backup
fi

tar -czf /data/log_backup/`date +%Y-%m-%d`-logs.tar.gz /var/log &> /dev/null
