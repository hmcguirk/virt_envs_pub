#!/bin/bash

if [ -z "$1" ]
  then
    echo "Usage: create_venv.sh <env folder name>"
    exit 1
fi

# get current directory
_d="$(pwd)"

echo Creating Virtual Env ''$1''

# create new venv along side current directory, so can go into source control independently
cd ..
python3 -m venv --system-site-packages $1

# go back to original directory
cd "$_d"

echo Copying in template files
cp -R venv_template_files/* ../$1/

# root folder for user files that are checked in the source control
mkdir ../$1/main

echo To activate, execute:
echo $  source $1/bin/activate
