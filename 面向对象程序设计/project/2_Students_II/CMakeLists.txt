project(HW2)

#设定C++版本
set(CMAKE_CXX_STANDARD 17)

#设定源码列表.cpp
set(SOURCE_FILES ./main.cpp)

#生成可执行文件
add_executable(HW2   ${SOURCE_FILES} )