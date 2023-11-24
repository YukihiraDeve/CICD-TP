#!/bin/bash

# Nom de l'image Docker (remplacez par le nom de votre image)
IMAGE_NAME="yukihiradev/cicd:latest"

# Nom du conteneur Docker (remplacez par le nom souhaité pour votre conteneur)
CONTAINER_NAME="cicd"

# Arrêter et supprimer l'ancien conteneur (si existant)
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true

# Télécharger la dernière image Docker
docker pull $IMAGE_NAME

# Lancer un nouveau conteneur Docker avec la nouvelle image
docker run -d --name $CONTAINER_NAME $IMAGE_NAME
