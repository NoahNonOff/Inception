# nginx Dockerfile
#
# Author: Noah BEAUFILS
# Date: 30:11:2023

DOCKER-COMPOSE = ./srcs/docker-compose.yml

all:
	docker compose -f $(DOCKER-COMPOSE) up -d --build

prerequisite:
	sudo apt upgrade -y
	sudo apt install docker; sudo apt upgrade docker -y
	sudo apt install docker-compose; sudo apt upgrade docker-compose -y

clean:
	sudo docker stop nginx && sudo docker rm nginx

re: clean all

.PHONY: nginx

.SILENT:

.IGNORE:
