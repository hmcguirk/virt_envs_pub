#!/bin/bash

python3 IsInVirtual.py
exit_code=$?

if [ $exit_code != 1 ]
  then
    echo "This must be run from an activated Virtual environment. None currently activated!"
    exit 1
fi

echo Installing all required packages

pip3 install wheel
pip3 install --upgrade tensorflow
pip3 install keras
pip3 install tensorflow-addons
pip3 install tensorflow_hub
pip3 install keras-tuner
pip3 install --upgrade matplotlib
pip3 install filesplit
pip3 install -q seaborn
pip3 install -q git+https://github.com/tensorflow/docs
pip3 install psutil
pip3 install ipython
pip3 install jupyter

#dotnet interactive jupyter install

