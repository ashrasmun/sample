cmake_minimum_required(VERSION 3.14)
project(sample_project)

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
