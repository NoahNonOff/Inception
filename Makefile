prerequisite:
	sudo apt-get update
	sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

all: prerequisite nginx

nginx:
	sudo docker build -t img_nginx ./srcs/requirements/nginx
	sudo docker run img_nginx

.PHONY: prerequisite nginx

#.SILENT: