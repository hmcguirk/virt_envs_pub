#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]
  then
    echo "Usage: user_init_container.sh <name of container> <base folder name> <port>"
    exit 1
fi

match=$(docker container ls -a | grep "\s$1$" | wc -l)

if [ "1" -eq "$match" ]
    then
      echo "Container '$1' found. You cannot initialize a new container with a name already in use, even if not running. Consider '\$ docker container rm ...'"
      exit 1
    else
      echo "Container '$1' not found. Good."
fi


echo ############
echo Initializing new directory structure $2
echo ############

_d="$(pwd)"

cd ..
mkdir $2

# go back to original directory
cd "$_d"

mkdir ../$2/scripts

echo Copying in template files
cp * ../$2/scripts

# root folder for user files that are checked in the source control
mkdir ../$2/main

mkdir ../$2/main/test
cp main_test/* ../$2/main/test


echo ############
echo Starting new container "$1" on :$3
echo ############

cd ../$2/scripts

DOCKER_IMG=tensorflow/tensorflow:latest-gpu-jupyter

docker run --name $1 -d --gpus all -it -v $PWD:/scripts -v $PWD/../main:/main -w /main -p $3:$3 $DOCKER_IMG bash


echo ############
echo Installing container-system prerequisites, as container-root
echo ############

docker exec -it -w /main $1 /scripts/root_system_install_prereq.sh


echo ############
echo Installing user prerequisites, as container-user
echo ############

docker exec -it -u$(id -u):$(id -g) -w /main $1 /scripts/user_install.sh


echo ############
echo Creating container start script: ../$2/scripts/start_jupyter_$1.sh
echo
echo ############

echo -e '#!/bin/bash'  > start_jupyter_$1.sh
echo docker start $1 >> start_jupyter_$1.sh
echo docker exec -it -u$(id -u):$(id -g) -w /main $1 jupyter notebook --notebook-dir=/main --ip 0.0.0.0 --port=$3 --no-browser --allow-root >> start_jupyter_$1.sh
chmod +x start_jupyter_$1.sh
