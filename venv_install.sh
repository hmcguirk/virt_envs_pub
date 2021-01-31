#!/bin/bash

python3 IsInVirtual.py
exit_code=$?

if [ $exit_code != 1 ]
  then
    echo "This must be run from an activated Virtual environment. None currently activated!"
    exit 1
fi
 
./user_install.sh

