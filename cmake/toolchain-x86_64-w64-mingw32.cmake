set (CMAKE_SYSTEM_NAME Windows)

# specify the cross compiler
set (CMAKE_C_COMPILER C:/mingw64/bin/gcc)
set (CMAKE_CXX_COMPILER C:/mingw64/bin/g++)

# where is the target environment
set (CMAKE_FIND_ROOT_PATH C:/mingw64/)

# search for programs in the build host directories
set (CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
set (CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set (CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set (CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# Make sure Qt can be detected by CMake
set (QT_BINARY_DIR /usr/x86_64-w64-mingw32/bin /usr/bin)
set (QT_INCLUDE_DIRS_NO_SYSTEM ON)

# set the resource compiler (RHBZ #652435)
set (CMAKE_RC_COMPILER x86_64-w64-mingw32-windres)
set (CMAKE_MC_COMPILER x86_64-w64-mingw32-windmc)

# override boost thread component suffix as mingw-w64-boost is compiled with threadapi=win32
set (Boost_THREADAPI win32)

# These are needed for compiling lapack (RHBZ #753906)
set (CMAKE_Fortran_COMPILER x86_64-w64-mingw32-gfortran)
set (CMAKE_AR:FILEPATH x86_64-w64-mingw32-ar)
set (CMAKE_RANLIB:FILEPATH x86_64-w64-mingw32-ranlib)

