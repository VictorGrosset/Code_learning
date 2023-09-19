#ifndef VOITURE_H
#define VOITURE_H

#include <string>

class Voiture {

public:
    void setInfo(std::string fabriquant, std::string modele, int annee);
    std::string getInfo();

private:
    std::string fabriquant;
    std::string modele;
    int anneeFab;
};

#endif //VOITURE_H