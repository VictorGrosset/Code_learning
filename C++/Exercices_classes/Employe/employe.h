#ifndef EMPLOYE_H
#define EMPLOYE_H

#include <string>
#include <iostream>
#include <cstdlib>

class Employe {

public:
    Employe();
    Employe(std::string name, std::string matricule, double salaire);

    void setName(std::string nom);
    void setMatricule(std::string matricule);
    void setSalaire(double salaire);
    void error();
    void deleteEmploye();
    void getEmployeInfo();

private:
    std::string nom;
    std::string matricule;
    double salaire;
};

#endif // EMPLOYE_H
