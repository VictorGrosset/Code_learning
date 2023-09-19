#include "Fenetre.h"

int main(int argc, char *argv[]) {

    QApplication myApp(argc, argv);
    Fenetre maFenetre;
    maFenetre.show();

    return myApp.exec();
}
