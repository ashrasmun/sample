#!/usr/bin/env bash

# This script invokes CMake with Ninja for Clang

CMAKE_INTERMEDIATE_DIR="../../build/sample/clang/cmake"

# Rerun CMake explicitly only when cache is not setup
# Also, make sure that commands for rtags are created
if [ ! -f "$CMAKE_INTERMEDIATE_DIR/CMakeCache.txt" ]; then
    cmake -G Ninja -S .. -B $CMAKE_INTERMEDIATE_DIR -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_EXPORT_COMPILE_COMMANDS=1
fi

pushd $CMAKE_INTERMEDIATE_DIR
ninja
popd

