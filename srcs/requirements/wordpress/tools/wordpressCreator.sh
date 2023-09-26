#!/bin/sh

#check if wp-config.php exist
if [ -f ./wp-config.php ]
then
	echo "wordpress already downloaded"
	#sleep 5
else
	#Download wordpress and all config file
	wget https://fr.wordpress.org/wordpress-6.3.1-fr_FR.tar.gz -P /var/www
	cd /var/www && tar -xzf wordpress-6.3.1-fr_FR.tar.gz && rm wordpress-6.3.1-fr_FR.tar.gz
fi

#Inport env variables in the config file
cd /var/www/wordpress/
sed -i "s/username_here/$MYSQL_USER/g" wp-config-sample.php
sed -i "s/password_here/$MYSQL_PASSWORD/g" wp-config-sample.php
sed -i "s/localhost/$MYSQL_HOSTNAME/g" wp-config-sample.php
sed -i "s/database_name_here/$MYSQL_DATABASE/g" wp-config-sample.php
cp wp-config-sample.php wp-config.php

exec "$@"