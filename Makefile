prerequisite:
	sudo apt-get update
	sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

all: prerequisite nginx mariadb

nginx:
	sudo docker build -t img_nginx ./srcs/requirements/nginx
	#[run] sudo docker run img_nginx

mariadb:
	sudo docker build -t img_mariadb ./srcs/requirements/mariadb
	sudo docker run img_mariadb

.PHONY: prerequisite nginx

#.SILENT: