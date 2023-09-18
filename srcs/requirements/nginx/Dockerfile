FROM	debian:buster

# install && update all
RUN		apt update; apt upgrade; apt-get update; apt-get upgrade
RUN		apt-get install nginx -y
RUN		apt-get install curl -y
RUN		apt-get install openssl -y

# set nginx SSL/TLS
RUN		mkdir -p /etc/nginx/ssl
RUN		openssl req -x509 -nodes \
		-out /etc/nginx/ssl/nbeaufil.crt \
		-keyout /etc/nginx/ssl/nbeaufil.key \
		-subj "/C=FR/ST=Normandie/L=Paris/O=42LeHavre/CN=nbeaufil.42.fr/UID=nbeaufil"

# set nginx config
COPY	./conf/nginx.conf /etc/nginx/nginx.conf
RUN		mkdir -p /var/run/nginx
RUN		mkdir -p /var/run/nginx.pid
RUN		mkdir -p /var/log/nginx/error.log

# make sure we have all permissions
RUN		chmod 755 /var/www/html
RUN		chown -R www-data:www-data /var/www/html

# authorize port
EXPOSE	443

# start nginx
CMD [ "nginx", "-g", "daemon off;" ]