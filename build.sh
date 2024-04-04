@echo off

if not exist build mkdir build
cd build
if not exist ".git" git clone https://github.com/Gagaved/OS_Labs .
cd ..

cd OS_Labs
git pull
cd ..

cd build
cmake ..
cmake --build . --config Release
