#include "student.h"
 #include <iostream>

int main (void) {
    Etudiant student1("25", "Florian Pecal");
    Etudiant student2(21, "Corentin Rouat");
    Etudiant defaultStudent;

    //defaultStudent.setAge(10);

    std::cout << student1.getInfoEtudiant() << std::endl;
    std::cout << student2.getInfoEtudiant() << std::endl;
    std::cout << defaultStudent.getInfoEtudiant() << std::endl;

    return 0;

}