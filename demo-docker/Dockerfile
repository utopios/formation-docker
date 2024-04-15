### Démarrer un processus
FROM ubuntu

LABEL author="Ihab ABADI"
LABEL description="Description of image docker"

## Création et navigation à l'intérieur d'un processus
WORKDIR /app

### Exécute une action à l'intérieur du process => ajoute une couche dans la stack des layers de l'image
RUN apt update && apt upgrade -y 

RUN apt install apache2 -y

### Ajouter des ressources dans le process => ADD, COPY

COPY . /var/www/html/

### Utilisateur !!!!!! Important

USER 1000

### Variables environnements dans un process build and Run => pour uniquement en build => ARG
ENV DEMO_ENV=value_env
ARG DEMO_ARG=value_arg

RUN echo ${DEMO_ARG}

### Commande à executer au démarrage du processus => CMD, ENTRYPOINT
CMD [ "service", "apache2", "start" ]
