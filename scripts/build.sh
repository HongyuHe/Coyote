#!/bin/bash
set -x
set -e

EXAMPLE=$1
BOARDS=$2

cd hw && mkdir build && cd build || exit
/bin/cmake .. -DFDEV_NAME=u55c -DEXAMPLE="$EXAMPLE"
make shell && make compile

# # * Copy to bitstream.
# cp ./cyt_top.bit honghe@alveo-build-01.ethz.ch:/mnt/scratch/honghe/bitstreams
# # * Program the static regions of the boards.
# /scripts/sgutil.sh /mnt/scratch/honghe/bitstreams/cyt_top.bit $BOARDS