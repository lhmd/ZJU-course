project(HW4)

#设定C++版本
set(CMAKE_CXX_STANDARD 11)

#生成可执行文件
add_executable(pdadd   ./src/pdadd.cpp  ./src/diary.cpp  ./src/diary.h )
add_executable(pdremove   ./src/pdremove.cpp  ./src/diary.cpp  ./src/diary.h )
add_executable(pdlist   ./src/pdlist.cpp  ./src/diary.cpp  ./src/diary.h )
add_executable(pdshow   ./src/pdshow.cpp  ./src/diary.cpp  ./src/diary.h )
