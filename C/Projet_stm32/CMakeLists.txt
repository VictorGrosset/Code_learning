cmake_minimum_required(VERSION 3.26)
project(Projet_stm32 LANGUAGES C)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)

add_executable(Projet_stm32 main.c)

target_link_libraries(Projet_stm32 PRIVATE m)

include(GNUInstallDirs)
install(TARGETS Projet_stm32
        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
        RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)