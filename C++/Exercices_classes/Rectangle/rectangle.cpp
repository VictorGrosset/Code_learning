#include "rectangle.h"

Rectangle::Rectangle() {
    longueur = 0;
    largeur = 0;
};

Rectangle::Rectangle(int longueur, int largeur) {
    this->longueur = longueur;
    this->largeur = largeur;
};

Rectangle::Rectangle(int cote) {
    this->longueur = largeur = cote;
}

void Rectangle::setLongueur(int longueur) {
    this->longueur = longueur;
}

void Rectangle::setLargeur(int largeur) {
    this->longueur = largeur;
}

int Rectangle::getLongueur() const{
    return longueur;
}

int Rectangle::getLargeur() const {
    return largeur;
}

int Rectangle::calcSurface() const {
    return largeur * longueur;
}

bool Rectangle::isRectangleSquare() {
    return largeur == longueur;
}
