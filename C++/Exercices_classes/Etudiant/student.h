#ifndef STUDENT_H
#define STUDENT_H

#include <string>

class Etudiant {

public:
    Etudiant();
    Etudiant(std::string age, std::string nom);
    Etudiant(int age, std::string nom);

    std::string getInfoEtudiant() const;

    void setAge(int age);
    void setNom(std::string nom);

private:
    int age;
    std::string nom;
    std::string strAge;
};



#endif //STUDENT_H