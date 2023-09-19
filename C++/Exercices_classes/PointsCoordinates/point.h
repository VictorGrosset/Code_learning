#ifndef POINTS_H
#define POINTS_H

#include <array>
#include <cmath>
#include <iostream>

class Point {

public:
    explicit Point(int x, int y);

    float distanceFromOrigin();
    float distanceFromPoint(const Point& object2);
    bool sameCoordinates(const Point& object2);

    std::array<int,2> getPointCoordinates();
    std::array<int,2> getExtPointCoordinates();
private:
    int dx;
    int dy;
    std::array<int, 2> pointCoordinates;
    std::array<int, 2> bufferPointCoordinates;
};

#endif //POINTS_H
