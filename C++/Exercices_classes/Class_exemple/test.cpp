/*
[template-spec]
class [ms-decl-spec] [tag [: base-list ]]
{
member-list
} [declarators];
[ class ] tag declarators;
 */

#include <iostream>
#include <string>
using namespace std;

class Chien {

public:
    Chien() {
        _pattes = 4;
        _aboie = true;
    }

    void set_taille_chien(string taille_chien) {
        _taille_chien = taille_chien;
    }

    virtual void set_oreille_chien (string type) {
        _type_oreille = type;
    }

private:
    int _pattes;
    bool _aboie;
    string _taille_chien, _type_oreille;
};

class Race : public Chien {

public:
    Race(string couleur, string taille) {
        _couleur = couleur;
        set_taille_chien((taille));
    }

    string get_couleur() {
        return _couleur;
    }

    void set_oreille_chien(string longueur, string type) {
        _longueur = longueur;
        _type_oreille = type;
    }

protected:
    string _couleur, _type_oreille, _longueur;



};

int main(void) {
    Chien hunter;
    Race azawakh("bringé", "grand");
    hunter.set_oreille_chien("tombantes");
    azawakh.set_oreille_chien("longues", "tombantes");
    cout << "Cet Azawak est " << azawakh.get_couleur() << endl;

}
