#!/bin/bash
echo Init and update submodules

ROOT_DIR=$PWD
git submodule update --init --recursive 


cd openocd
./bootstrap
./configure --enable-picoprobe --disable-werror 
make -j10
##sudo make install

cd $ROOT_DIR
cd picoprobe
mkdir build && cd build
cmake ..
make

cd $ROOT_DIR


