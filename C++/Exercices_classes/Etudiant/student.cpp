#include "student.h"

Etudiant::Etudiant() {
    strAge = "0";
    nom = "Jean Dupont";
}

Etudiant::Etudiant(std::string age, std::string nom) {
    this->strAge = age;
    this->nom = nom;
};

Etudiant::Etudiant(int age, std::string nom) {
    this->strAge = std::to_string(age); 
    this->nom = nom;
}

void Etudiant::setNom(std::string nom) {
    this->nom = nom;
}

void Etudiant::setAge(int age) {
    this->strAge = std::to_string(age);
}

std::string Etudiant::getInfoEtudiant() const{
    return "nom: " + nom + " " + "age: " + strAge;
}
