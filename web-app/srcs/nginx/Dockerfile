# nginx Dockerfile
#
# Author: Noah BEAUFILS
# Date: 23:11:2023

FROM	debian:buster

# install all the dependencies
RUN		apt update -y; apt install nginx -y

# set all the configuration files
COPY	./conf/index.html var/www/html/index.html
COPY	./conf/tutorial /etc/nginx/sites-enabled/config

RUN		service nginx restart

# launch nginx
CMD [ "nginx", "-g", "daemon off;" ]