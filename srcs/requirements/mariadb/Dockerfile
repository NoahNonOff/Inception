# mariadb Dockerfile
#
# author: noah BEAUFILS
# date: 18:09:2023

FROM	debian:buster

# install && update all
RUN		apt update; apt upgrade; apt-get update; apt-get upgrade
RUN		apt-get install mariadb-server -y

# set database setting
COPY	./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# authorize port
EXPOSE	3306

COPY ./tools/create_db.sh /usr/local/bin/
# COPY ./conf/wordpress.sql /usr/local/bin/
ENTRYPOINT ["create_db.sh"]

CMD ["mysqld", "--bind-address=0.0.0.0"]