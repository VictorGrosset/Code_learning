#include "banque.h"
#include <iostream>

CompteBanque::CompteBanque(std::string titulaire, std::string numeroCompte) {
    this->numeroCompte = numeroCompte;
    this->titulaire = titulaire;
}

CompteBanque::CompteBanque(std::string titulaire, std::string numeroCompte, double encours) {
    this->numeroCompte = numeroCompte;
    this->titulaire = titulaire;
    this->encours = encours;
}

void CompteBanque::deposer() {
    double montant;

    std::cout << "Quel montant déposer ?" << " " << std::endl;
    std::cin >> montant;
    encours += montant;
    std::cout << "Vous venez de déposer " << montant << " euros" << std::endl;
}

void CompteBanque::retirer() {
    double montant;

    std::cout << "Quel montant retirer ?" << " " << std::endl;
    std::cin >> montant;
    if(montant <= encours) {
        encours -= montant;
    std::cout << "Vous venez de retirer " << montant << " euros" << std::endl;
    }
    else {
        std::cout << "Encours insuffisant" << std::endl;
    }
}

double CompteBanque::getEncours() {
    return encours;
}

double CompteBanque::getNumeroCompte() {
    return std::stod(numeroCompte) ;
}


std::string CompteBanque::getAllInfoCompte() {
    return "titulaire: " + titulaire + " Compte numéro:" + numeroCompte + " Solde:" + std::to_string(encours);
}
