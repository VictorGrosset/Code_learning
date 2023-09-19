#include "Fenetre.h"

Fenetre::Fenetre(QWidget *parent) : QWidget( parent) {

    maDispo = new QGridLayout(this);

    monLabel = new QLabel("Pas cliqué", this);
    monBouton = new QPushButton("Cliquez ici !", this);
    boutonQuitter = new QPushButton("Quitter", this);

    connect(monBouton, &QPushButton::clicked ,this, &Fenetre::boutonClique);
    connect(boutonQuitter, &QPushButton::clicked, this, &QApplication::quit);

    espaceGauche = new QSpacerItem(0, 0, QSizePolicy::Expanding, QSizePolicy::Minimum);
    espaceDroite = new QSpacerItem(0, 0, QSizePolicy::Expanding, QSizePolicy::Minimum);

    maDispo->addWidget(monBouton, 1, 1, 1, 1);
    maDispo->addWidget(monLabel, 1, 3, 1, 1);
    maDispo->addWidget(boutonQuitter, 2, 3, 1, 1);

    setLayout(maDispo);

}

void Fenetre::boutonClique() {
    monLabel->setText("Bravo ! Tu as cliqué sur le bouton");
}
