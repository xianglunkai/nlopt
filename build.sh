rm build
cmake -DCMAKE_TOOLCHAIN_FILE=./cmake/toolchain-x86_64-w64-mingw32.cmake -DCMAKE_INSTALL_PREFIX=D:/matlab/work/nlopt/lib -DBUILD_SHARED_LIBS=OFF -S . -B ./build -G "MinGW Makefiles"
cd .\build\
mingw32-make 
mingw32-make install