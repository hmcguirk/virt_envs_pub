#!/bin/bash

# expects to be run by a non-root user
if [ "$EUID" -eq 0 ]
  then echo "Please do not run as root"
  exit
fi

sudo ./root_system_install_prereq.sh
