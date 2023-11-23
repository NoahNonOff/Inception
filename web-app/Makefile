# nginx Dockerfile
#
# Author: Noah BEAUFILS
# Date: 23:11:2023

version=1.0
NGINX_DIR=./srcs/nginx/

all:	nginx

nginx:
	sudo docker build -t nginx-app:$(version) $(NGINX_DIR)
	sudo docker run -d -p 81:81 nginx-app:1.0
	firefox 127.0.0.1:80