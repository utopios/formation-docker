### Démarrer un conteneur

docker run -d --name symfony-app -p 8080:80 correction-tp-1

- options possible:
    - d => démarrer dans un process autre que le terminal
    - it => démarrer un ssh tty
    - p => mappage de port
    - name => nom du container


### Commande pour exécuter une action à l'intérieur d'un conteneur 

docker exec <option> <command>


### Commande pour supprimer un docker
docker rm <id_ou_nom_conteneur> => option -f pour forcer la suppression d'un conteneur en cours d'exécution

### Commande pour afficher la liste des conteneurs
docker ps -a 

### commande pour supprimer une image 
docker rmi <nom_ou_id_image>

### Commande pour connecter un conteneur à un réseau
docker network connect <nom_network> <nom_container>
