#!/bin/bash

if [ -z "$1" ]
  then
    echo "Usage: docker_exec-root_bash.sh <name of container>"
    exit 1
fi

docker exec -it $1 bash
