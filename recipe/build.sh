#!/bin/bash

# Configure the build of yaml-cpp4rkt
mkdir build
cd build
cmake -GNinja .. ${CMAKE_ARGS} \
    -DCMAKE_BUILD_TYPE=Release \
    -DBUILD_SHARED_LIBS=ON \
    -DYAML_BUILD_SHARED_LIBS=ON \
    -DYAML_CPP_BUILD_TESTS=OFF

# Build and install yaml-cpp4rkt in $PREFIX
ninja install
