@echo off

:: This script invokes CMake with Ninja for Visual Studio, 64bit target

:: Enabling Microsoft's cl.exe compiler
if not defined INCLUDE (
    @call "c:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"
)

set BUILD_DIR="../../build/64"

  :: Prepare the build
if not exist %BUILD_DIR%\CMakeCache.txt (
  @call cmake -G Ninja -S .. -B %BUILD_DIR%
)

@pushd %BUILD_DIR%
@call ninja
@popd
