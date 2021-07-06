cd test\app
mkdir build
cd build
cmake -GNinja ..                         ^
    -DCMAKE_BUILD_TYPE=Release           ^  @REM WARNING: If app dependent on yaml-cpp is not build in Release, its execution returns a non zero %errorlevel% and conda build task fails!
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX%
ninja
app.exe
