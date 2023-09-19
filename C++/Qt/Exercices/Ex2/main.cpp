#include "Fenetre.h"

int main(int argc, char *argv[]) {

    QApplication monApp(argc, argv);

    Fenetre maFenetre;
    maFenetre.show();

    return monApp.exec();
}
