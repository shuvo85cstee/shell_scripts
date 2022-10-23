#!/bin/bash
#mysql backup
TIMESTAMP=$(date +"%F")
BACKUP_DIR="/backup/$TIMESTAMP"
MYSQL_USER="UserName"
MYSQL_PASSWORD="xxxxx"
 
mkdir -p "$BACKUP_DIR"


mysqldump --u $MYSQL_USER -p$MYSQL_PASSWORD  --all-databases > all_databases.sql
mv /root/all_databases.sql "$BACKUP_DIR/"
scp -r  "$BACKUP_DIR"  root@ip:/root/DB-backup
