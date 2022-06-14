#!/bin/bash

if [ -z "$1" ]
  then
    echo "Usage: user_init_container.sh <name of container>"
    exit 1
fi

match=$(docker container ls -a | grep "\s$1$" | wc -l)

if [ "1" -eq "$match" ]
    then
      echo "Container '$1' found. Good."
    else
      echo "Container '$1' not found. You must create the container first."
      exit 1
fi

echo ############
echo Starting existing container "$1"
echo ############

docker start $1

echo ############
echo Starting Jupyter notbook
echo ############

echo -e '#!/bin/bash'  > start_jupyter_$1.sh
echo docker start $1 >> start_jupyter_$1.sh
echo docker exec -it -u$(id -u):$(id -g) -w /main $1 jupyter notebook --notebook-dir=/main --ip 0.0.0.0 --no-browser --allow-root >> start_jupyter_$1.sh
chmod +x start_jupyter_$1.sh
./start_jupyter_$1.sh
