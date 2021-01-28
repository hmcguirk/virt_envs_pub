#!/bin/bash

docker run --gpus all -it -u$(id -u):$(id -g) -v $PWD/../main:/tmp -w /tmp -p 8888:8888 tensorflow/tensorflow:latest-gpu-jupyter jupyter notebook --notebook-dir=/tmp --ip 0.0.0.0 --no-browser --allow-root
