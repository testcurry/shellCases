#!/bin/bash
#定义备份路径
BACKUPDIR=/data/backup/db
#获取当前时间
DATATIME=$(date +%Y-%m-%d_%H%M%S)
echo $DATATIME
#数据库信息
HOST=192.168.200.131
DB_USER=root
DB_PW=123456
DB_NAME=thyrodedb
#创建备份目录
[ ! -d $BACKUPDIR/$DATATIME ] && mkdir -p $BACKUPDIR/$DATATIME
#开始备份数据库
echo "---------开始备份数据库......请稍后。。。----------"
docker exec -it $(docker ps -a|grep mysql |awk {'print $1'}) mysqldump -u${DB_USER} -p${DB_PW} --host=${HOST} -q -R --databases ${DB_NAME}|grep gzip > ${BACKUPDIR}/${DATATIME}/${DATATIME}.sql.gz
cd ${BACKUPDIR}
tar -zcvf ${DATATIME}.tar.gz ${DATATIME}
rm -rf ${DATATIME}

#删除10天前备份的
find ./ -atime +10 -name "*.tar.gz" -exec rm -f {} \;
echo "备份数据库${DB_NAME}成功。。。"
