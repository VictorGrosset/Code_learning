#include "Fenetre.h"

#include <QApplication>

int main(int argc, char *argv[]) {

    QApplication app(argc, argv);

    Fenetre maFenetre;

    maFenetre.setWindowTitle("Exercice bouton");
    maFenetre.resize(600, 600);
    maFenetre.show();

    return app.exec();

    return 0;
}
