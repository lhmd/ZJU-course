cmake_minimum_required(VERSION 3.22)
project(stitching)

set(CMAKE_CXX_STANDARD 17)

include_directories(.)

add_executable(stitching
    hw7_pa.h
    main.cpp
    Panorama.cpp
    Panorama.h)
# opencv
find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})
target_link_libraries(stitching ${OpenCV_LIBS})
