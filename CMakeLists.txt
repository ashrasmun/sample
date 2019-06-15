cmake_minimum_required(VERSION 3.14)
project(sample_project)

# Build stuff to different directory than the one with CMake stuff
set (CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../lib)
set (CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../lib)
set (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../bin)

add_library(
    say-hello
    src/hello.h
    src/hello.cpp
)

add_executable(
    sample
    src/test.cpp
)

target_link_libraries(
    sample
    PRIVATE
    say-hello
)
