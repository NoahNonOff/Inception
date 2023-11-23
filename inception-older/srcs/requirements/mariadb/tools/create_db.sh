#!bin/sh

# initializes the MariaDB data directory and creates the system tables in the mysql database
mysql_install_db

# check for database
if [ -d "/var/lib/mysql/$MYSQL_DATABASE" ]; then
	echo "Database already exists"
esle
# Set root option
mysql_secure_instalation <<__EOF__

Y
root4life
root4life
Y
n
Y
Y
__EOF__

#Add a root user on 127.0.0.1 to allow remote connexion
echo "GRANT ALL ON *.* TO 'root'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD'; FLUSH PRIVILEGES;" | mysql -uroot

#Create database and user for wordpress
echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE; GRANT ALL ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD'; FLUSH PRIVILEGES;" | mysql -uroot

#Import database
mysql -uroot -p$MYSQL_ROOT_PASSWORD $MYSQL_DATABASE < /usr/local/bin/wordpress.sql


fi

# /etc/init.d/mysql stop

exec "$@"