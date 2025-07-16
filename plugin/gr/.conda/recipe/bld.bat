setlocal EnableDelayedExpansion
@echo on

:: Make a build folder and change to it
cmake -E make_directory buildconda
cd buildconda
dir ..

:: configure
cmake -G "Ninja" ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
    -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" ../plugin/gr

if errorlevel 1 exit 1

:: build
cmake --build . 
if errorlevel 1 exit 1

:: install
cmake --install .
if errorlevel 1 exit 1
