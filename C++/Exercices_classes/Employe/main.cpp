#include <iostream>
#include "employe.h"

using namespace std;

int main(int argc, char *argv[])
{
    Employe mec1("Grosset", "1159", 1550);

    mec1.setMatricule("1256");
    mec1.deleteEmploye();
    mec1.setName("Grosset");
    mec1.setMatricule("1256");
    mec1.setSalaire(1550);
    mec1.getEmployeInfo();

    return 0;
}
