#!/bin/bash

sudo apt-get install docker.io -y
sudo docker pull mariadb
sudo mkdir /opt/wordpress
sudo mkdir -p /opt/wordpress/database
sudo mkdir -p /opt/wordpress/html
sudo mkdir /var/www
sudo mkdir -p /var/www/html

sudo docker run -e MYSQL_ROOT_PASSWORD=mysqllalala -e MYSQL_USER=wpuser -e MYSQL_PASSWORD=mysqllalala -e MYSQL_DATABASE=wordpress_db -v /opt/wordpress/database:/var/lib/mysql --name wordpressdb -d mariadb

sudo docker inspect -f '{{ .NetworkSettings.IPAddress }}' wordpressdb

sudo docker pull wordpress:latest

sudo docker run -e WORDPRESS_DB_USER=wpuser -e WORDPRESS_DB_PASSWORD=mysqllalala -e WORDPRESS_DB_NAME=wordpress_db -p 10.3.0.40:80:80 -v /opt/wordpress/html:/var/www/html --link wordpressdb:mysql --name wpcontainer -d wordpress

sudo iptables -P FORWARD ACCEPT

#http://www.techrepublic.com/article/how-to-install-wordpress-with-docker/
