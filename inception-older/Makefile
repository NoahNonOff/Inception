all: prerequisite nginx mariadb

prerequisite:
	@echo "--> make prerequisite"
	@echo ""
	sudo apt-get update -y
	sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
	sudo apt-get install docker-compose -y
	@echo "______________________________________________________________________________"
	@echo ""

nginx:
	@echo "--> make nginx"
	@echo ""
	sudo docker build -t img_nginx ./srcs/requirements/nginx
	@echo "______________________________________________________________________________"
	@echo ""
#[run] sudo docker run img_nginx

mariadb:
	@echo "--> make mariadb"
	@echo ""
	sudo docker build -t img_mariadb ./srcs/requirements/mariadb
	@echo "______________________________________________________________________________"
	@echo ""
#sudo docker run img_mariadb

wordpress:
	@echo "--> make wordpress"
	@echo ""
	sudo docker build -t img_wordpress ./srcs/requirements/wordpress
	@echo "______________________________________________________________________________"
	@echo ""
	sudo docker run img_wordpress

clean:
	# stop all running container
	@sudo docker stop `sudo docker ps -a -q`
	# delete all stopped container
	@sudo docker rm `sudo docker ps -a -q`
	# remove all images at once
	@sudo docker rmi `sudo docker images -q`

.PHONY: prerequisite nginx clean mariadb wordpress

.SILENT: clean prerequisite

# build -> "docker-compose -f ./srcs -d -build"
# stop -> "docker-compose -f ./srcs stop"
# supress the build -> "docker-compose ./srcs down"
# supress all -> "docker system prune -af"