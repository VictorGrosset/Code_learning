#include "point.h"
#include "graph.h"
#include <iostream>

int main(void) {

    /*
    Todo
    Here are a few ideas for potential improvements and additional features for your program:

    Managing Multiple Points: You can enhance the Point class to manage multiple points. You could create a container (like an std::vector or std::map) within the Point class to store multiple points
    and their associated information.

    Overlapping Points: Implement logic to handle overlapping points on the graph. You could define a priority or display order for points and determine how to visualize overlapping points.

    Deleting Points: Add functionality to the Graph class to delete points from the graph. This could involve clearing the corresponding cell or replacing it with an empty space.

    Interactive User Interface: Develop an interactive user interface that allows users to add, delete, and interact with points using menu options and commands.

    Replacing Empty Spaces: Implement a mechanism to replace empty spaces in the graph with the original character (e.g., .) after a point is deleted.

    Saving and Loading: Add the ability to save the current graph state to a file and load it later, allowing users to continue working on their graph between sessions.

    Undo/Redo: Implement undo and redo functionality to allow users to revert changes or redo actions in the graph.

    Advanced Graph Rendering: Explore more advanced graph rendering techniques, such as using ASCII art to represent points and lines in a more visually appealing way.
    */

    Point pointA(2, 3);
    Point pointB(-3, -3);

    std::array<int, 2> coordA = pointA.getPointCoordinates();
    std::array<int, 2> coordB= pointB.getPointCoordinates();

    float disOrigA = pointA.distanceFromOrigin();
    float disOrigB = pointB.distanceFromOrigin();

    float disAB = pointA.distanceFromPoint(pointB);

    Graph monGraph;
    monGraph.initSystem(40,40);
    monGraph.addPoint(coordA, 'A');
    monGraph.addPoint(coordB, 'B');
    monGraph.displayGraph();


    std::cout << "The coordinates of point A are : ";
    for(const auto& num : coordA) {
        std::cout << num << " ";
    } std::cout << std::endl;

    std::cout << "The point A is at " << disOrigA << " From origin of the plan" << std::endl << std::endl;;

    std::cout << "The coordinates of point B are : ";
    for(const auto& num : coordB) {
        std::cout << num << " ";
    } std::cout << std::endl;

    std::cout << "The point B is at " << disOrigB << " From origin of the plan" << std::endl << std::endl;;

    std::cout << "Point B is located " << disAB << " from Point A" << std::endl;

    std::array<int, 2> bufferedB = pointA.getExtPointCoordinates();

    std::cout << std::endl << "The coordinates of point B in object A are : ";
    for(const auto& num : bufferedB) {
        std::cout << num << " ";
    } std::cout << std::endl;

    return 0;

}
