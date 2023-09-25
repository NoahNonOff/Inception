# wordpress Dockerfile
#
# author: noah BEAUFILS
# date: 25:09:2023

FROM	debian:buster

# install && update all
RUN		apt update -y; apt upgrade -y; apt-get update -y; apt-get upgrade -y
RUN		apt-get -y install wget
RUN		apt-get -y install php7.3 php-fpm php-mysql mariadb-client

# download wordpress
RUN		wget https://fr.wordpress.org/wordpress-6.3.1-fr_FR.tar.gz -P /var/www
RUN		cd /var/www && tar -xzf wordpress-6.3.1-fr_FR.tar.gz && rm wordpress-6.3.1-fr_FR.tar.gz

# set permissions
#RUN		chown -R root:root /var/www/wordpress

# copy conf file
COPY	./conf/www.conf /etc/php/7.3/fpm/pool.d

# create the folder to enable php start
RUN		mkdir /run/php

# copy the script to launch wordpress
COPY	./tools/wordpressCreator.sh /usr/local/bin/
RUN		chmod +x /usr/local/bin/wordpressCreator.sh

ENTRYPOINT	["/usr/local/bin/wordpressCreator.sh"]

# expose the 9000 port
EXPOSE 9000