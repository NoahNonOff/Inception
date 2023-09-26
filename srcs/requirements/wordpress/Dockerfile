# wordpress Dockerfile
#
# author: noah BEAUFILS
# date: 26:09:2023

FROM	debian:buster

# install && update all
RUN		apt update -y; apt upgrade -y; apt-get update -y; apt-get upgrade -y
RUN		apt-get -y install wget
RUN		apt-get -y install php7.3 php-fpm php-mysql mariadb-client

# download wordpress
RUN		wget https://fr.wordpress.org/wordpress-6.3.1-fr_FR.tar.gz -P /var/www
RUN		cd /var/www && tar -xzf wordpress-6.3.1-fr_FR.tar.gz && rm wordpress-6.3.1-fr_FR.tar.gz
RUN		chown -R root:root /var/www/wordpress

# --------------------------- not use --------------------------- #
# download wp-cli
# RUN		wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# RUN		chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
# --------------------------------------------------------------- #

# copy conf file
COPY	./conf/www.conf /etc/php/7.3/fpm/pool.d

# create the folder to enable php start
RUN		mkdir /run/php

# copy the script to launch wordpress
COPY	./tools/wordpressCreator.sh /usr/local/bin/
RUN		chmod +x /usr/local/bin/wordpressCreator.sh

# define the working directory
WORKDIR	/var/www/wordpress/

ENTRYPOINT	["/usr/local/bin/wordpressCreator.sh"]

# listen from port: 9000
EXPOSE 9000

#Launch PHP FPM in foreground and ignore deamonize from conf file (-F)
CMD ["/usr/sbin/php-fpm7.3", "-F"]