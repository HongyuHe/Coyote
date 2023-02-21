#!/bin/bash

EXAMPLE=$1
cd hw && mkdir build && cd build || exit
cmake .. -DFDEV_NAME=u55c -DEXAMPLE="$EXAMPLE"

