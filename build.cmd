@echo off

rem Проверяем существование директории build, если ее нет - создаем
if not exist build mkdir build

rem Переходим в директорию build
cd build

rem Вызываем CMake для генерации проекта Visual Studio
cmake ..

rem Собираем проект с помощью MSBuild
cmake --build . --config Release