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
