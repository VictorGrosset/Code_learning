#include "rectangle.h"
#include <iostream>

int main(void) {
    Rectangle monRectangle(2, 4);

    std::cout << "Longueur " << monRectangle.getLongueur() << std::endl;
    std::cout << "Largeur " << monRectangle.getLargeur() << std::endl;
    std::cout << "Aire " << monRectangle.calcSurface() << std::endl;
    
    if(monRectangle.isRectangleSquare()) {
        std::cout << "C'est un carré" << std::endl;
    }
    else
        std::cout << "Pas un carré" << std::endl;

    
    return 0; 
}
