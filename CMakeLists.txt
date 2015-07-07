
# 要求するcmakeのバージョン
cmake_minimum_required(VERSION 2.8)

#プロジェクトの指定
PROJECT()

#find glut
find_package(GLUT REQUIRED glut)
#include_directories($(GLUT_INCLUDE_DIRS))
#link_directories($(GLUT_LIBRARY_DIRS))
add_definitions(${GLUT_DEFINITIONS})
if(NOT GLUT_FOUND)
	message(ERROR "GLUT not found")
endif(NOT GLUT_FOUND)


#find opnegl
find_package(OpenGL REQUIRED)
#include_directories(${OpenGL_INCLUDE_DIRS})
#link_directories(${OpenGL_LIBRARY_DIRS})
add_definitions(${OpenGL_DEFINITIONS})
if(NOT OPENGL_FOUND)
	    message(ERROR " OPENGL not found!")
endif(NOT OPENGL_FOUND)

#Eigen
SET( EIGEN3_INCLUDE_DIR "${EIGEN3_INCLUDE_DIR}" )
IF( NOT EIGEN3_INCLUDE_DIR )
	MESSAGE( FATAL_ERROR "not Eigen.")
ENDIF()
INCLUDE_DIRECTORIES ( "${EIGEN3_INCLUDE_DIR}" )


#c++11が入ってるかどうか
include(CheckCXXCompilerFlag)
CHECK_CXX_COMPILER_FLAG("-std=c++11" COMPILER_SUPPORTS_CXX11)
CHECK_CXX_COMPILER_FLAG("-std=c++0x" COMPILER_SUPPORTS_CXX0X)
if(COMPILER_SUPPORTS_CXX11)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
elseif(COMPILER_SUPPORTS_CXX0X)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")
else()
	message(STATUS "The compiler ${CMAKE_CXX_COMPILER} has no C++11 support. Please use a different C++ compiler.")
endif()


#実行ファイルの出力
add_executable(out main.cpp)

#コンパイルオプション
#CXXはC++
#-gはデバッグをオン
#-Wallは警告オプション
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -ftest-coverage -fprofile-arcs")


#ライブラリのリンク
target_link_libraries(out ${OPENGL_LIBRARIES} ${GLUT_LIBRARY} m)










