#include "banque.h"

#include <iostream>

int main(void) {

    CompteBanque compteN1("Mr Grosset Victor", "15646542", 0);

    std::cout << compteN1.getAllInfoCompte() << std::endl;
    compteN1.deposer();
    std::cout << compteN1.getAllInfoCompte() << std::endl;
    compteN1.retirer();
    std::cout << compteN1.getAllInfoCompte() << std::endl;

    return 0;
}
