#ifndef GRAPH_H
#define GRAPH_H

#include <iostream>
#include <vector>
#include <array>
#include <cstdlib>

class Graph {

public:
    Graph();
    void initSystem(int width, int height);
    void addPoint(std::array<int,2> pointCoordinates, char pointLetter);
    void displayGraph();

private:
    int width;
    int height;
    char letter;
    int x;
    int y;
    int relOriginY;
    int relOriginX;
    std::vector<std::vector<char>> coordonnees;

};

#endif //GRAPH_H
