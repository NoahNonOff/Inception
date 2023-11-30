# nginx Dockerfile
#
# Author: Noah BEAUFILS
# Date: 30:11:2023

FROM	debian:buster

# install all the dependencies
RUN		apt-get update -y; apt-get upgrade -y;
RUN		apt-get install nginx -y
RUN		apt-get install openssl -y

# set all the configuration files
COPY	./conf/index.html var/www/html/index.html
COPY	./conf/nginx.conf /etc/nginx/conf.d

# create a self-signed ssl/tls certificate
# [ "https://sectigostore.com/page/fix-firefox-security-error/" ]

RUN		mkdir -p /etc/nginx/ssl
RUN		openssl req -x509 -nodes -out /etc/nginx/ssl/nbeaufil.crt	\
		-keyout /etc/nginx/ssl/nbeaufil.key							\
		-subj "/C=FR/ST=Normandie/L=LeHavre/O=42LeHavre/CN=nbeaufil.42.fr/UID=nbeaufil"

RUN		mkdir -p /var/run/
RUN		touch /var/run/nginx.pid
RUN		touch /var/log/nginx/error.log
RUN		service nginx restart

# bind to the port 443
EXPOSE	443

# launch nginx
CMD [ "nginx", "-g", "daemon off;" ]

