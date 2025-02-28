cmake_minimum_required(VERSION 3.10)
project(RaylibGameEngine)

set(CMAKE_CXX_STANDARD 11)

find_package(raylib REQUIRED)

add_executable(build main.cpp GameEngine.cpp)
target_link_libraries(build raylib)

