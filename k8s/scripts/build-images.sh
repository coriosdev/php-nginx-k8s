#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CONTAINER_DIR="$SCRIPT_DIR/../containers"

eval $(minikube docker-env)
docker image rm $( docker images -af reference='php-nginx-k8s/*' -q )
docker build -t php-nginx-k8s/php-fpm "$CONTAINER_DIR/php-fpm"
docker build -t php-nginx-k8s/nginx "$CONTAINER_DIR/nginx"
eval $(minikube docker-env --unset)