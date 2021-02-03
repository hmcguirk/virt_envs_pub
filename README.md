# Docker & Virtual Environments Helpers - scripts include base backages for TensorFlow development

## VENV (Virtual Environment)

### Example Usage:

hugh@Linux:~/repos/virt_envs_pub$ **ll ../**
```
drwxrwxr-x 7 hugh hugh 4096 Jan 21 13:55 ./
drwxrwxr-x 4 hugh hugh 4096 Jan 21 13:02 ../
drwxrwxr-x 4 hugh hugh 4096 Jan 21 13:51 virt_envs_pub/
```

hugh@Linux:~/repos/virt_envs_pub$ **./create_venv.sh my_env_01**

```
Creating Virtual Env my_env_01
Copying in template files
To activate, execute:
$ source my_env_01/bin/activate
```

hugh@Linux:~/repos/virt_envs_pub$ **ll ../**
```
drwxrwxr-x 7 hugh hugh 4096 Jan 21 13:55 ./
drwxrwxr-x 4 hugh hugh 4096 Jan 21 13:02 ../
drwxrwxr-x 8 hugh hugh 4096 Jan 21 13:55 my_env_01/
drwxrwxr-x 4 hugh hugh 4096 Jan 21 13:51 virt_envs_pub/
```

hugh@Linux:~/repos/virt_envs_pub$ **cd ../my_env_01/scripts**

hugh@LegionLinux:~/repos/my_env_01/scripts$ **./sudo_system_install_prereq.sh**

```
[sudo] password for hugh: 
Installing all system prerequisites (These are not part of any virtual environment)
Reading package lists...
Building dependency tree...
Reading state information...
git is already the newest version (1:2.25.1-1ubuntu3).
python3-testresources is already the newest version (2.0.0-3).
vim is already the newest version (2:8.1.2269-1ubuntu5).
python3-venv is already the newest version (3.8.2-0ubuntu2).
bash is already the newest version (5.0-6ubuntu1.1).
bash set to manually installed.
0 to upgrade, 0 to newly install, 0 to remove and 0 not to upgrade.
```

hugh@Linux:~/repos/my_env_01/scripts$ **cd ..**

hugh@Linux:~/repos/my_env_01$ **source bin/activate**

**(my_env_01)** hugh@Linux:~/repos/my_env_01$ **cd scripts**

(my_env_01) hugh@Linux:~/repos/my_env_01/scripts$ **./venv_install.sh**

```
Installing all required packages
Collecting wheel
  Using cached wheel-0.36.2-py2.py3-none-any.whl (35 kB)
Installing collected packages: wheel
Successfully installed wheel-0.36.2
Collecting tensorflow
  Using cached tensorflow-2.4.0-cp38-cp38-manylinux2010_x86_64.whl (394.8 MB)
Collecting grpcio~=1.32.0
  Using cached grpcio-1.32.0-cp38-cp38-manylinux2014_x86_64.whl (3.8 MB)

...

Successfully installed Send2Trash-1.5.0 argon2-cffi-20.1.0 async-generator-1.10 attrs-20.3.0 bleach-3.2.2 cffi-1.14.4 defusedxml-0.6.0 ipykernel-5.4.3 ipywidgets-7.6.3 jinja2-2.11.2 jsonschema-3.2.0 jupyter-1.0.0 jupyter-client-6.1.11 jupyter-console-6.2.0 jupyter-core-4.7.0 jupyterlab-pygments-0.1.2 jupyterlab-widgets-1.0.0 mistune-0.8.4 nbclient-0.5.1 nbconvert-6.0.7 nbformat-5.1.2 nest-asyncio-1.4.3 notebook-6.2.0 pandocfilters-1.4.3 prometheus-client-0.9.0 ptyprocess-0.7.0 pycparser-2.20 pyrsistent-0.17.3 pyzmq-21.0.1 qtconsole-5.0.1 qtpy-1.9.0 terminado-0.9.2 testpath-0.4.4 tornado-6.1 webencodings-0.5.1 widgetsnbextension-3.5.1
```

(my_env_01) hugh@Linux:~/repos/my_env_01/scripts$ **./test_tensorflow.sh**

```
Tesing TensorFlow
2021-01-21 14:00:45.104400: I tensorflow/stream_executor/platform/default/dso_loader.cc:49] Successfully opened dynamic library libcudart.so.11.0
2021-01-21 14:00:46.544328: I tensorflow/compiler/jit/xla_cpu_device.cc:41] Not creating XLA devices, tf_xla_enable_xla_devices not set
2021-01-21 14:00:46.545095: I tensorflow/stream_executor/platform/default/dso_loader.cc:49] Successfully opened dynamic library libcuda.so.1

...

2021-01-21 14:00:46.621702: I tensorflow/stream_executor/cuda/cuda_gpu_executor.cc:941] successful NUMA node read from SysFS had negative value (-1), but there must be at least one NUMA node, so returning NUMA node zero
2021-01-21 14:00:46.622107: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1720] Found device 0 with properties: 
pciBusID: 0000:01:00.0 name: GeForce RTX 2060 computeCapability: 7.5
coreClock: 1.2GHz coreCount: 30 deviceMemorySize: 5.79GiB deviceMemoryBandwidth: 312.97GiB/s
2021-01-21 14:00:46.622127: I tensorflow/stream_executor/platform/default/dso_loader.cc:49] Successfully opened dynamic library libcudart.so.11.0
2021-01-21 14:00:46.622144: I tensorflow/stream_executor/platform/default/dso_loader.cc:49] Successfully opened dynamic library libcublas.so.11
2021-01-21 14:00:46.622159: I tensorflow/stream_executor/platform/default/dso_loader.cc:49] Successfully opened dynamic library libcublasLt.so.11
2021-01-21 14:00:46.622174: I tensorflow/stream_executor/platform/default/dso_loader.cc:49] Successfully opened dynamic library libcufft.so.10
2021-01-21 14:00:46.622189: I tensorflow/stream_executor/platform/default/dso_loader.cc:49] Successfully opened dynamic library libcurand.so.10
2021-01-21 14:00:46.622204: I tensorflow/stream_executor/platform/default/dso_loader.cc:49] Successfully opened dynamic library libcusolver.so.10
2021-01-21 14:00:46.622218: I tensorflow/stream_executor/platform/default/dso_loader.cc:49] Successfully opened dynamic library libcusparse.so.11
2021-01-21 14:00:46.622233: I tensorflow/stream_executor/platform/default/dso_loader.cc:49] Successfully opened dynamic library libcudnn.so.8
2021-01-21 14:00:46.622289: I tensorflow/stream_executor/cuda/cuda_gpu_executor.cc:941] successful NUMA node read from SysFS had negative value (-1), but there must be at least one NUMA node, so returning NUMA node zero
2021-01-21 14:00:46.622710: I tensorflow/stream_executor/cuda/cuda_gpu_executor.cc:941] successful NUMA node read from SysFS had negative value (-1), but there must be at least one NUMA node, so returning NUMA node zero
2021-01-21 14:00:46.623104: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1862] Adding visible gpu devices: 0
2021-01-21 14:00:46.623132: I tensorflow/stream_executor/platform/default/dso_loader.cc:49] Successfully opened dynamic library libcudart.so.11.0
2021-01-21 14:00:47.221101: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1261] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-01-21 14:00:47.221135: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1267]      0 
2021-01-21 14:00:47.221144: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1280] 0:   N 
2021-01-21 14:00:47.221339: I tensorflow/stream_executor/cuda/cuda_gpu_executor.cc:941] successful NUMA node read from SysFS had negative value (-1), but there must be at least one NUMA node, so returning NUMA node zero
2021-01-21 14:00:47.221815: I tensorflow/stream_executor/cuda/cuda_gpu_executor.cc:941] successful NUMA node read from SysFS had negative value (-1), but there must be at least one NUMA node, so returning NUMA node zero
2021-01-21 14:00:47.222253: I tensorflow/stream_executor/cuda/cuda_gpu_executor.cc:941] successful NUMA node read from SysFS had negative value (-1), but there must be at least one NUMA node, so returning NUMA node zero
2021-01-21 14:00:47.222660: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1406] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 4946 MB memory) -> physical GPU (device: 0, name: GeForce RTX 2060, pci bus id: 0000:01:00.0, compute capability: 7.5)
tf.Tensor(-1379.8076, shape=(), dtype=float32)
```

(my_env_01) hugh@Linux:~/repos/my_env_01/scripts$ **cd ../main/**

(my_env_01) hugh@Linux:~/repos/my_env_01/main$ **ll**

```
total 8
drwxrwxr-x 2 hugh hugh 4096 Jan 21 13:55 ./
drwxrwxr-x 9 hugh hugh 4096 Jan 21 13:59 ../
*[Files under source control go here. Level higer relate to the virtual environment, and do not go in source control]*
```

(my_env_01) hugh@Linux:~/repos/my_env_01/main$ **deactivate**

hugh@Linux:~/repos/my_env_01/main$

## Docker (Container)

### Example Usage:

hugh@Linux:~/repos/virt_envs_pub$ **./create_container_dedicated_env_jupyter.sh docker_ml docker_ml_01** 
```
Container 'docker_ml' not found. Good.

Initializing new directory structure docker_ml_01

Copying in template files

Starting new container docker_ml

d09587d1f473ece9c8c2996d81c86959c02af91c257a81c8d86541f8f39bf420

Installing container-system prerequisites, as container-root

Installing all system prerequisites (These are not part of any virtual environment)
Reading package lists...
Building dependency tree...
Reading state information...
bash is already the newest version (4.4.18-2ubuntu1.2).
git is already the newest version (1:2.17.1-1ubuntu0.7).
The following additional packages will be installed:
  libgpm2 python3-linecache2 python3-pbr python3-traceback2 python3-unittest2 python3.6-venv vim-common vim-runtime xxd
Suggested packages:
  gpm ctags vim-doc vim-scripts
The following NEW packages will be installed:
  libgpm2 python3-linecache2 python3-pbr python3-testresources python3-traceback2 python3-unittest2 python3-venv python3.6-venv vim vim-common vim-runtime xxd
0 upgraded, 12 newly installed, 0 to remove and 18 not upgraded.
Need to get 6908 kB of archives.
After this operation, 33.7 MB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu bionic-updates/main amd64 xxd amd64 2:8.0.1453-1ubuntu1.4 [49.3 kB]
Get:2 http://archive.ubuntu.com/ubuntu bionic-updates/main amd64 vim-common all 2:8.0.1453-1ubuntu1.4 [70.4 kB]
Get:3 http://archive.ubuntu.com/ubuntu bionic/main amd64 libgpm2 amd64 1.20.7-5 [15.1 kB]

...

Unpacking vim-common (2:8.0.1453-1ubuntu1.4) ...
Selecting previously unselected package libgpm2:amd64.
Preparing to unpack .../02-libgpm2_1.20.7-5_amd64.deb ...
Unpacking libgpm2:amd64 (1.20.7-5) ...
Selecting previously unselected package python3-linecache2.
Preparing to unpack .../03-python3-linecache2_1.0.0-3_all.deb ...
Unpacking python3-linecache2 (1.0.0-3) ...
Selecting previously unselected package python3-pbr.
Preparing to unpack .../04-python3-pbr_3.1.1-3ubuntu3_all.deb ...
Unpacking python3-pbr (3.1.1-3ubuntu3) ...
Selecting previously unselected package python3-traceback2.
Preparing to unpack .../05-python3-traceback2_1.4.0-5_all.deb ...
Unpacking python3-traceback2 (1.4.0-5) ...

...

Setting up python3-traceback2 (1.4.0-5) ...
Setting up python3-unittest2 (1.1.0-6.1) ...
update-alternatives: using /usr/bin/python3-unit2 to provide /usr/bin/unit2 (unit2) in auto mode
Setting up vim-common (2:8.0.1453-1ubuntu1.4) ...
Setting up vim-runtime (2:8.0.1453-1ubuntu1.4) ...
Setting up python3-venv (3.6.7-1~18.04) ...
Setting up vim (2:8.0.1453-1ubuntu1.4) ...
update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vim (vim) in auto mode
update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vimdiff (vimdiff) in auto mode
update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rvim (rvim) in auto mode
update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rview (rview) in auto mode
update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vi (vi) in auto mode
update-alternatives: warning: skip creation of /usr/share/man/fr/man1/vi.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group vi) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/it/man1/vi.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group vi) doesn't 

...

update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
Setting up python3-testresources (2.0.0-2) ...
Processing triggers for mime-support (3.60ubuntu1) ...
Processing triggers for libc-bin (2.27-3ubuntu1.2) ...
Collecting pip
  Downloading pip-21.0.1-py3-none-any.whl (1.5 MB)
     |████████████████████████████████| 1.5 MB 4.3 MB/s 
Installing collected packages: pip
  Attempting uninstall: pip
    Found existing installation: pip 20.2.4
    Uninstalling pip-20.2.4:
      Successfully uninstalled pip-20.2.4
Successfully installed pip-21.0.1

Installing user prerequisites, as container-user

Installing all required packages
Defaulting to user installation because normal site-packages is not writeable
Requirement already satisfied: wheel in /usr/local/lib/python3.6/dist-packages (0.36.2)
Defaulting to user installation because normal site-packages is not writeable
Collecting tensorflow
  Downloading tensorflow-2.4.1-cp36-cp36m-manylinux2010_x86_64.whl (394.3 MB)
     |████████████████████████████████| 394.3 MB 65 kB/s 
Requirement already satisfied: protobuf>=3.9.2 in /usr/local/lib/python3.6/dist-packages (from tensorflow) (3.14.0)
Requirement already satisfied: termcolor~=1.1.0 in /usr/local/lib/python3.6/dist-packages (from tensorflow) (1.1.0)
Requirement already satisfied: numpy~=1.19.2 in /usr/local/lib/python3.6/dist-packages (from tensorflow) (1.19.5)
Requirement already satisfied: tensorflow-estimator<2.5.0,>=2.4.0 in /usr/local/lib/python3.6/dist-packages (from tensorflow) (2.4.0)

...

Collecting pyyaml
  Downloading PyYAML-5.4.1-cp36-cp36m-manylinux1_x86_64.whl (640 kB)
     |████████████████████████████████| 640 kB 10.5 MB/s 
Requirement already satisfied: numpy>=1.9.1 in /usr/local/lib/python3.6/dist-packages (from keras) (1.19.5)
Requirement already satisfied: six in /usr/local/lib/python3.6/dist-packages (from h5py->keras) (1.15.0)
Installing collected packages: scipy, pyyaml, keras
Successfully installed keras-2.4.3 pyyaml-5.4.1 scipy-1.5.4
Defaulting to user installation because normal site-packages is not writeable
Collecting tensorflow-addons
  Downloading tensorflow_addons-0.12.1-cp36-cp36m-manylinux2010_x86_64.whl (703 kB)
     |████████████████████████████████| 703 kB 5.1 MB/s 
Collecting typeguard>=2.7
  Downloading typeguard-2.10.0-py3-none-any.whl (16 kB)
Installing collected packages: typeguard, tensorflow-addons
Successfully installed tensorflow-addons-0.12.1 typeguard-2.10.0
Defaulting to user installation because normal site-packages is not writeable
Collecting tensorflow_hub
  Downloading tensorflow_hub-0.11.0-py2.py3-none-any.whl (107 kB)
     |████████████████████████████████| 107 kB 5.2 MB/s 
Requirement already satisfied: protobuf>=3.8.0 in /usr/local/lib/python3.6/dist-packages (from tensorflow_hub) (3.14.0)
Requirement already satisfied: numpy>=1.12.0 in /usr/local/lib/python3.6/dist-packages (from tensorflow_hub) (1.19.5)
Requirement already satisfied: six>=1.9 in /usr/local/lib/python3.6/dist-packages (from protobuf>=3.8.0->tensorflow_hub) (1.15.0)
Installing collected packages: tensorflow-hub
Successfully installed tensorflow-hub-0.11.0
Defaulting to user installation because normal site-packages is not writeable
Collecting keras-tuner
  Downloading keras-tuner-1.0.2.tar.gz (62 kB)
     |████████████████████████████████| 62 kB 902 kB/s 
Requirement already satisfied: packaging in /usr/local/lib/python3.6/dist-packages (from keras-tuner) (20.8)
Collecting future
  Downloading future-0.18.2.tar.gz (829 kB)
     |████████████████████████████████| 829 kB 8.1 MB/s 
Requirement already satisfied: numpy in /usr/local/lib/python3.6/dist-packages (from keras-tuner) (1.19.5)
Collecting tabulate

...

Requirement already satisfied: MarkupSafe>=0.23 in /usr/local/lib/python3.6/dist-packages (from jinja2->notebook->jupyter) (1.1.1)
Requirement already satisfied: nbclient<0.6.0,>=0.5.0 in /usr/local/lib/python3.6/dist-packages (from nbconvert->jupyter) (0.5.1)
Requirement already satisfied: defusedxml in /usr/local/lib/python3.6/dist-packages (from nbconvert->jupyter) (0.6.0)
Requirement already satisfied: entrypoints>=0.2.2 in /usr/local/lib/python3.6/dist-packages (from nbconvert->jupyter) (0.3)
Requirement already satisfied: bleach in /usr/local/lib/python3.6/dist-packages (from nbconvert->jupyter) (3.2.2)
Requirement already satisfied: pandocfilters>=1.4.1 in /usr/local/lib/python3.6/dist-packages (from nbconvert->jupyter) (1.4.3)
Requirement already satisfied: testpath in /usr/local/lib/python3.6/dist-packages (from nbconvert->jupyter) (0.4.4)
Requirement already satisfied: jupyterlab-pygments in /usr/local/lib/python3.6/dist-packages (from nbconvert->jupyter) (0.1.2)
Requirement already satisfied: mistune<2,>=0.8.1 in /usr/local/lib/python3.6/dist-packages (from nbconvert->jupyter) (0.8.4)
Requirement already satisfied: nest-asyncio in /usr/local/lib/python3.6/dist-packages (from nbclient<0.6.0,>=0.5.0->nbconvert->jupyter) (1.4.3)
Collecting nbformat>=4.2.0
  Downloading nbformat-5.1.2-py3-none-any.whl (113 kB)
     |████████████████████████████████| 113 kB 4.2 MB/s 
Requirement already satisfied: async-generator in /usr/local/lib/python3.6/dist-packages (from nbclient<0.6.0,>=0.5.0->nbconvert->jupyter) (1.10)
Requirement already satisfied: packaging in /usr/local/lib/python3.6/dist-packages (from bleach->nbconvert->jupyter) (20.8)
Requirement already satisfied: webencodings in /usr/local/lib/python3.6/dist-packages (from bleach->nbconvert->jupyter) (0.5.1)
Requirement already satisfied: pyparsing>=2.0.2 in /usr/local/lib/python3.6/dist-packages (from packaging->bleach->nbconvert->jupyter) (2.4.7)
Requirement already satisfied: qtpy in /usr/local/lib/python3.6/dist-packages (from qtconsole->jupyter) (1.9.0)
Installing collected packages: nbformat
Successfully installed nbformat-5.1.2

Starting Jupyter notbook

[I 23:24:26.983 NotebookApp] Writing notebook server cookie secret to /.local/share/jupyter/runtime/notebook_cookie_secret
/usr/local/lib/python3.6/dist-packages/IPython/paths.py:67: UserWarning: IPython parent '/' is not a writable location, using a temp directory.
  " using a temp directory.".format(parent))
[I 23:24:27.215 NotebookApp] Serving notebooks from local directory: /main
[I 23:24:27.215 NotebookApp] Jupyter Notebook 6.2.0 is running at:
[I 23:24:27.215 NotebookApp] http://d09587d1f473:8888/?token=777dadf76bcc63c921af8a57ff25cf186081f6b32fc68db2
[I 23:24:27.216 NotebookApp]  or http://127.0.0.1:8888/?token=777dadf76bcc63c921af8a57ff25cf186081f6b32fc68db2
[I 23:24:27.216 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 23:24:27.220 NotebookApp] 
    
    To access the notebook, open this file in a browser:
        file:///.local/share/jupyter/runtime/nbserver-427-open.html
    Or copy and paste one of these URLs:
        http://d09587d1f473:8888/?token=777dadf76bcc63c921af8a57ff25cf186081f6b32fc68db2
     or http://127.0.0.1:8888/?token=777dadf76bcc63c921af8a57ff25cf186081f6b32fc68db2
```
