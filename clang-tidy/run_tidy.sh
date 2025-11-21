#!/bin/bash

cmake -S . -B build -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_EXPORT_COMPILE_COMMANDS=ON

cp build/compile_commands.json compile_commands.json

./run_clang-tidy.py -p . -warnings-as-errors='*' -extra-arg-before=-std=c++20 -extra-arg-before=-x -extra-arg-before=c++ -header-filter=".*" > clang_tidy.txt

# Remove everything before "Running clang-tidy" line
# sed -i '/^Running clang-tidy/,$!d' clang_tidy.txt

echo "Clang-tidy complete."