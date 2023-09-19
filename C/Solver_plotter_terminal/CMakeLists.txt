cmake_minimum_required(VERSION 3.5)

project(solver_plotter LANGUAGES C)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)

add_executable(solver_plotter Source.c)

include(GNUInstallDirs)
install(TARGETS solver_plotter
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)