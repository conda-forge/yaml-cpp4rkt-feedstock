@REM Configure the build of yaml-cpp4rkt
mkdir build
cd build
cmake -GNinja ..                            ^
    -DCMAKE_BUILD_TYPE=Release              ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX%    ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DBUILD_SHARED_LIBS=ON                  ^
    -DYAML_BUILD_SHARED_LIBS=ON             ^
    -DYAML_CPP_BUILD_TESTS=OFF

@REM Build and install yaml-cpp4rkt in %LIBRARY_PREFIX%
ninja install
