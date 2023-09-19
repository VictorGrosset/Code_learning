#include "graph.h"

Graph::Graph() {
    height = 0;
    width = 0;
}

void Graph::initSystem(int width, int height) {
    this->height = height;
    this->width = 2 * width;
    this->relOriginY = this->height/2;
    this->relOriginX = this->width/2;

    if(this->width % 2 == 0) {
        this->width += 1;
    }
    if(this->height % 2 == 0) {
        this->height += 1;
    }

    coordonnees = std::vector<std::vector<char>>(this->height, std::vector<char>(this->width));


    for(int ligne = 0; ligne < coordonnees.size(); ligne++) {
        for(int colonne = 0; colonne < coordonnees[ligne].size(); colonne++) {
            if((colonne < this->width/2 || colonne > this->width /2) && (ligne != height/2)) {
                this->coordonnees[ligne][colonne] = '.';
            }
            else {
                this->coordonnees[ligne][colonne] = '+';
            }
        }
    }
}

void Graph::addPoint(std::array<int,2> pointCoordinates, char pointLetter) {
    x = pointCoordinates[0] * 2;
    y = pointCoordinates[1];

    if(abs(x) > this->relOriginX || abs(y) > this->relOriginY) {
        std::cout << "\x1B[2J\x1B[H";
        std::cout << "the system is too small for the point " << pointLetter << " to be displayed" << std::endl;
        exit(0);
    }

    coordonnees[relOriginY-y][this->relOriginX+x] = pointLetter;
}

void Graph::displayGraph() {
    for(const auto &ligne : coordonnees) {
        for(const auto &colonne : ligne) {
            std::cout<<colonne;
        }
        std::cout<<std::endl;
    }
}

