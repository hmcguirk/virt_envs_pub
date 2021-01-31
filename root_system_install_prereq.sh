#!/bin/bash

echo Installing all system prerequisites \(These are not part of any virtual environment\)

# expects to be run by root user of a docker container
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

apt -yq install bash python3-testresources git vim python3-venv
