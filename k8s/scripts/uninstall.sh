#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
HELM_DIR="$SCRIPT_DIR/.."
CURRENT_DIR=$(pwd)

cd "$HELM_DIR"
helm uninstall -n php-nginx-k8s php-nginx-k8s helm
cd "$CURRENT_DIR"