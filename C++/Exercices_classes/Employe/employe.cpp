#include "employe.h"
#include <iostream>

Employe::Employe() {
    this->nom = "nom";
    this->matricule = "matricule";
    this->salaire = 0;
}

Employe::Employe(std::string nom, std::string matricule, double salaire) {
    this->nom = nom;
    this->matricule = matricule;
    this->salaire = salaire;
}

void Employe::setName(std::string nom) {
    if(this->nom == "nom") {
        this->nom = nom;
    } else {
        this->error();
    }
}

void Employe::setMatricule(std::string matricule) {
    if(this->matricule == "matricule") {
        this-> matricule = matricule;
    } else {
        this->error();
    }
}

void Employe::setSalaire(double salaire) {
    if(this->salaire == 0) {
        this->salaire = salaire;
    } else {
        this->error();
    }
}

void Employe::getEmployeInfo() {
    std::cout<<this->nom<<" "<<this->matricule<<" "<<std::to_string(this->salaire * 12)<<std::endl;;
}

void Employe::deleteEmploye() {
    this->nom = "nom";
    this->matricule = "matricule";
    this->salaire = 0;
}

void Employe::error() {
    system("clear");
    std::cout<<"un employé existe déjà à cet emplacement. Il faut soit le supprimer, ou si c'est une erreur, créer un nouvel employé"<<std::endl;
}
