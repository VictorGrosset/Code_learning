cmake_minimum_required(VERSION 3.10)

project(PointsCoordinates LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(PointsCoordinates main.cpp
    graph.h
    graph.cpp
    point.h
    point.cpp)

include(GNUInstallDirs)
install(TARGETS PointsCoordinates
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
