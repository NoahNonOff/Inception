# wordpress Dockerfile
#
# Author: Noah BEAUFILS
# Date: 27:11:2023

FROM	debian:buster

# install all the dependencies
RUN		apt-get update -y; apt-get upgrade -y;
RUN		apt-get install curl -y

# install wp-cli
RUN		curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN		chmod +x wp-cli.phar
RUN		mv wp-cli.phar /usr/local/bin/wp
