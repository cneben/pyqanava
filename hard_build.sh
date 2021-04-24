#!/bin/bash
set -e

export PATH=$PATH:$HOME/Qt/6.1.0/gcc_64/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/Qt/5.15.2/gcc_64/lib
export CLANG_INSTALL_DIR=$HOME/projects/libclang-release_110-based-linux-Ubuntu20.04-gcc9.3-x86_64/libclang
export QT_DIR=$HOME/Qt/6.1.0/gcc_64/lib/cmake/Qt6
export CMAKE_PREFIX_PATH=$HOME/Qt/6.1.0/gcc_64
export QT_QMAKE_EXECUTABLE=$HOME/Qt/6.1.0/gcc_64/bin/qmake
export Qt6Core_DIR=$HOME/Qt/6.1.0/gcc_64/lib/cmake/Qt6Core
rm -rf build
mkdir build 
pushd build
cmake -H.. -B. -G Ninja -DCMAKE_BUILD_TYPE=Release \
    -DQT_QMAKE_EXECUTABLE:STRING=$HOME/Qt/6.1.0/gcc_64/bin/qmake \
    -DCMAKE_PREFIX_PATH:STRING=$HOME/Qt/6.1.0/gcc_64 \
    -DCMAKE_C_COMPILER:STRING=/usr/bin/gcc \
    -DCMAKE_CXX_COMPILER:STRING=/usr/bin/g++
ninja
popd
