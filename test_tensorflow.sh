#!/bin/bash

echo Testing TensorFlow

python3 -c "import tensorflow as tf;print(tf.reduce_sum(tf.random.normal([1000, 1000])))"
