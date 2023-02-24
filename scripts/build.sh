#!/bin/bash
set -x
set -e

EXAMPLE=$1

cd hw && mkdir build && cd build || exit
/bin/cmake .. -DFDEV_NAME=u55c -DEXAMPLE="$EXAMPLE"
make shell && make compile

