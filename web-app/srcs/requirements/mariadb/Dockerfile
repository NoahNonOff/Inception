# mariadb Dockerfile
#
# Author: Noah BEAUFILS
# Date: 27:11:2023

FROM	debian:buster

# install all the dependencies
RUN		apt-get update -y; apt-get upgrade -y;

# [ "https://www.digitalocean.com/community/tutorials/how-to-install-mariadb-on-ubuntu-20-04" ]
RUN		apt install mariadb-server -y

COPY	mariadb-conf.sh mariadb-conf.sh
RUN		bash mariadb-conf.sh