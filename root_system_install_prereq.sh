#!/bin/bash

echo Installing all system prerequisites \(These are not part of any virtual environment\)

# expects to be run by root user of a docker container
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

apt update

apt -yq install bash python3-testresources git vim python3-venv python3-pip
python3 -m pip install --upgrade pip

mkdir -p /.local/bin
mkdir -p /.cache/pip
mkdir -p /.config/matplotlib

chmod a+rwx /.local/bin
chmod a+rwx /.cache/pip
chmod a+rwx /.config/matplotlib

export PATH=/.local/bin:$PATH
echo PATH=/.local/bin:$PATH >> /etc/profile

