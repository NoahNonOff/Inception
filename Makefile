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

clean:
	# stop all running container
	@sudo docker stop `sudo docker ps -a -q`
	# delete all stopped container
	@sudo docker rm `sudo docker ps -a -q`
	# remove all images at once
	@sudo docker rmi `sudo docker images -q`

.PHONY: prerequisite nginx clean mariadb

.SILENT: clean