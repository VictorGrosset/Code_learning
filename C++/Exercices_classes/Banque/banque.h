#ifndef BANQUE_H
#define BANQUE_H

#include <string>

class CompteBanque {

public:
    CompteBanque(std::string titulaire, std::string numeroCompte);
    CompteBanque(std::string titulaire, std::string numeroCompte, double encours);

    void deposer();
    void retirer();

    double getEncours();
    double getNumeroCompte();
    std::string getAllInfoCompte();

private:
    std::string titulaire;
    std::string numeroCompte;
    double encours;
};


#endif //BANQUE_H
