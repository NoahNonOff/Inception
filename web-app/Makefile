# nginx Dockerfile
#
# Author: Noah BEAUFILS
# Date: 23:11:2023

version=1.0
NGINX_DIR=./srcs/nginx/
NGINX_NAME=nginx-app

all:	nginx

prerequisite:
	sudo apt upgrade -y
	sudo apt install docker; sudo apt upgrade docker -y
	sudo apt install docker-compose; sudo apt upgrade docker-compose -y

nginx:
	sudo docker build -t $(NGINX_NAME):$(version) $(NGINX_DIR)
	sudo docker run -d -p 443:443 --name nginx $(NGINX_NAME):$(version)

clean:
	sudo docker stop nginx && sudo docker rm nginx

re: clean all

.PHONY: nginx

.SILENT:

.IGNORE:
