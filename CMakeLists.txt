cmake_minimum_required(VERSION 3.15)
project(testt)

set(CMAKE_CXX_STANDARD 14)

add_executable(testt main.cpp)

find_package(SFML 2.5 COMPONENTS graphics audio  PATHS C:/SFML-2.5.1/)

target_link_libraries(testt sfml-graphics sfml-audio)