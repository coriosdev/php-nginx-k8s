#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
SRC_PATH="$SCRIPT_DIR/../.."
SRC_ABSOLUTE_PATH=$( cd "$SRC_PATH" &> /dev/null && pwd )
echo $SRC_ABSOLUTE_PATH
minikube start --driver=docker --addons=ingress --mount-string "$SRC_ABSOLUTE_PATH:/mnt/source" --mount true 
