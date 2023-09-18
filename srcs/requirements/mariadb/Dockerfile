# mariadb Dockerfile
#
# author: noah BEAUFILS
# date: 18:09:2023

FROM	debian:buster

# install && update all
RUN		apt update; apt upgrade; apt-get update; apt-get upgrade
RUN		apt-get install mariadb-server -y

# authorize port
EXPOSE	3306