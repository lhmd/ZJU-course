project(HW1)

#设定C++版本
set(CMAKE_CXX_STANDARD 11)

#设定源码列表.cpp
set(SOURCE_FILES ./main.cpp)

#生成可执行文件
add_executable(HW1   ${SOURCE_FILES} )