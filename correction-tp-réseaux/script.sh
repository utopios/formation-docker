### Build des images
docker build -f Dockerfile.nginx -t custom_nginx .
docker build -f Dockerfile.symfony -t custom_symfony .

### Création des conteneurs

docker run --name php -d custom_symfony
docker run -d --name nginx_app -p 80:80 custom_nginx

docker run --name mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql

### Création du réseau
docker network create tp_bridge

### Connexion des conteneurs aux réseaux
docker network connect tp_bridge php
docker network connect tp_bridge nginx_app
docker network connect tp_bridge mysql
