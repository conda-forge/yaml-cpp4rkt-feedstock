cd test\app
mkdir build
cd build

@REM WARNING: If testing yaml-cpp app is not built in Release, its execution
@REM returns a non zero %errorlevel% and the conda build task fails!

cmake -GNinja ..                         ^
    -DCMAKE_BUILD_TYPE=Release           ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX%
ninja
app.exe
