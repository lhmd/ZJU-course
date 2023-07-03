cmake_minimum_required(VERSION 3.16)
project(7_Object_Serialization)

set(CMAKE_CXX_STANDARD 20)

add_compile_options(-std=c++2a -fconcepts)

add_executable(7_Object_Serialization test/test.cpp include/binary.h third_party/tinyxml2/tinyxml2.cpp third_party/tinyxml2/tinyxml2.h include/XML.h)
