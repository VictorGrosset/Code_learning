cmake_minimum_required(VERSION 3.24)
project(Qt_test_menu_toolbar)

set(CMAKE_CXX_STANDARD 17)
set(Qt6_DIR "/opt/Qt/6.4.2/gcc_64/lib/cmake/Qt6")

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)


find_package(Qt6 COMPONENTS
        Core
        Gui
        Widgets
        REQUIRED)

add_executable(Qt_test_menu_toolbar main.cpp simple_menu.cpp simple_menu.h)
target_link_libraries(Qt_test_menu_toolbar
        Qt::Core
        Qt::Gui
        Qt::Widgets
        )

