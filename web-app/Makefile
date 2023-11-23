# nginx Dockerfile
#
# Author: Noah BEAUFILS
# Date: 23:11:2023

version=1.0
NGINX_DIR=./srcs/nginx/
NGINX_NAME=nginx-app

all:	nginx

nginx:
	# Create the docker image
	sudo docker build -t $(NGINX_NAME):$(version) $(NGINX_DIR)
	# Run the container
	sudo docker run -d -p 443:443 --name nginx $(NGINX_NAME):$(version)
	firefox https://example.ubuntu.com/

clean:
	sudo docker stop nginx && sudo docker rm nginx

.PHONY: nginx

.SILENT:

.IGNORE: clean