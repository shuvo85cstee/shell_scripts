#!/bin/bash
MYSQL_USER="root"
MYSQL_PASSWORD="mysql_root_password"
cp /var/www/html/_db_backups/db.sql /var/www/html/_db_backups/previous 


diff  /var/www/html/db_backups/previous/db.sql  /var/www/html/db_backups/db.sql

if [ $? -gt 0 ] ; then

mysql -u $MYSQL_USER -p$MYSQL_PASSWORD -e "drop database db_name"  
echo "deleted"
mysqladmin -u $MYSQL_USER -p$MYSQL_PASSWORD create db_name
echo "created" 
mysql -u $MYSQL_USER -p$MYSQL_PASSWORD db < /var/www/html/db_backups/db.sql
echo "restored"
fi

