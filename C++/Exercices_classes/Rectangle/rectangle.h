#ifndef RECTANGLE_H
#define RECTANGLE_H

class Rectangle {
public:
    Rectangle();
    Rectangle(int cote);
    Rectangle(int longueur, int largeur);

    void setLongueur(int longueur);
    void setLargeur(int largeur);
    int getLongueur() const;
    int getLargeur() const;
    int calcSurface() const;
    bool isRectangleSquare();

private:
    int longueur;
    int largeur;
};

#endif // RECTANGLE_H