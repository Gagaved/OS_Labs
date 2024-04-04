@echo off

if not exist build mkdir build

cd build

if not exist .git (
    git clone https://github.com/Gagaved/OS_Labs .
) else (
    git pull
)

cmake ..

cmake --build . --config Release