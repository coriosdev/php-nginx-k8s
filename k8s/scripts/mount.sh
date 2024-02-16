#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
SRC_PATH="$SCRIPT_DIR/../.."
SRC_ABSOLUTE_PATH=$( cd "$SRC_PATH" &> /dev/null && pwd )

minikube mount "$SRC_ABSOLUTE_PATH:/mnt/source"
