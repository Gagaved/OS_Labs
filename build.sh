#!/bin/bash

if [ ! -d "build" ]; then
    mkdir build
fi

cd build

if [ ! -d ".git" ]; then
    git clone https://github.com/Gagaved/OS_Labs .
fi

git pull

cmake ..

make