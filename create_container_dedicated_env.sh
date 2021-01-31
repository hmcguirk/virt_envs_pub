#!/bin/bash

if [ -z "$1" ]
  then
    echo "Usage: user_init_container.sh <name of container>"
    exit 1
fi

current_dir_name=${PWD##*/} 

echo Running from "$current_dir_name"

if [ ! -d "../main" ] || [ "$current_dir_name" != "scripts" ]
  then
    echo "Execute this script directly from the 'scripts' directory"
    exit 2
fi

match=$(docker container ls -a | grep "\s$1$" | wc -l)

if [ "1" -eq "$match" ]
    then
      echo "Container '$1' found. You cannot initialize a new container with a name already in use, even if not running. Consider '\$ docker container rm ...'"
      exit 1
    else
      echo "Container '$1' not found. Good."
fi

DOCKER_IMG=tensorflow/tensorflow:latest-gpu-jupyter

echo ############
echo Starting new container "$1"
echo ############

docker run --name $1 -d --gpus all -it -v $PWD:/scripts -v $PWD/../main:/main -w /main -p 8888:8888 $DOCKER_IMG bash

echo ############
echo Installing container-system prerequisites, as container-root
echo ############

docker exec -it -w /main $1 /scripts/root_system_install_prereq.sh

echo ############
echo Installing user prerequisites, as container-user
echo ############

docker exec -it -u$(id -u):$(id -g) -w /main $1 /scripts/user_install_py_all.sh

echo ############
echo Starting Jupyter notbook
echo ############

docker exec -it -u$(id -u):$(id -g) -w /main $1 jupyter notebook --notebook-dir=/main --ip 0.0.0.0 --no-browser --allow-root

