#include "ExTime.h"
#include <iostream>

int main(void) {

    ExTime temps0;
    temps0.setTime(12, 15, 01);
    std::cout << temps0.getTime12() << std::endl;
    std::cout << temps0.getTime24() << std::endl << std::endl;

    ExTime temps1(18, 48, 01);
    std::cout << temps1.getTime12() << std::endl;
    std::cout << temps1.getTime24() << std::endl << std::endl;

    ExTime temps2(9, 45, 11);
    std::cout << temps2.getTime12() << std::endl;
    std::cout << temps2.getTime24() << std::endl << std::endl;

    return 0;
}