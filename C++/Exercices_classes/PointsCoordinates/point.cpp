#include "point.h"

Point::Point(int x, int y) {
    this->pointCoordinates = {x,y};
    this->bufferPointCoordinates = {0,0};
}

float Point::distanceFromOrigin() {
    if(!this->pointCoordinates.empty()) {
        return sqrt(pow(pointCoordinates.at(0),2) + pow(pointCoordinates.at(1),2));
    }
    else {
        return 0;
    }
}

float Point::distanceFromPoint(const Point& object2) {
    bufferPointCoordinates = object2.pointCoordinates;

    dx = pointCoordinates[0] - bufferPointCoordinates[0];
    dy = pointCoordinates[1] - bufferPointCoordinates[1];

    return sqrt(pow(dx, 2) + pow(dy, 2));
}

bool Point::sameCoordinates(const Point& object2) {
    bufferPointCoordinates = object2.pointCoordinates;

    dx = pointCoordinates[0] - bufferPointCoordinates[0];
    dy = pointCoordinates[1] - bufferPointCoordinates[1];

    if(dx ==0 && dy ==0) {
        return true;
    }
    else {
        return false;
    }
}

std::array<int, 2> Point::getPointCoordinates() {
    return pointCoordinates;
}
std::array<int, 2> Point::getExtPointCoordinates() {
    return bufferPointCoordinates;
}
