#!/bin/bash

echo Installing all required packages

# needed when run as a docker user without login shell reading /etc/profile
export PATH=/.local/bin:$PATH

pip3 install wheel
pip3 install --upgrade tensorflow==2.5.0
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

