#!/bin/bash

if [ -z "$1" ]
  then
    echo "Usage: docker_exec_user_jupyter.sh <name of container>"
    exit 1
fi

docker exec -it -u$(id -u):$(id -g) -w /main $1 jupyter notebook --notebook-dir=/main --ip 0.0.0.0 --no-browser --allow-root
