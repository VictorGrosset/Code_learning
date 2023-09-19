#include "Fenetre.h"

Fenetre::Fenetre(QWidget *parent) {

    setWindowTitle("Exercice 2");

    tB = new QLabel("Cliquez sur un des boutons", this);
    b1 = new QPushButton("pas clique", this);
    b2 = new QPushButton("pas clique", this);
    b3 = new QPushButton("pas clique", this);
    bQuit = new QPushButton("Quitter", this);
    monLayout = new QGridLayout(this);

    monLayout->addWidget(tB,0, 1, 1, 3);
    monLayout->addWidget(b1, 1, 0);
    monLayout->addWidget(b2, 1, 1);
    monLayout->addWidget(b3, 1, 2);
    monLayout->addWidget(bQuit, 2, 2);

    connect(b1, &QPushButton::clicked, this, &Fenetre::onB1Click);
    connect(b2, &QPushButton::clicked, this, &Fenetre::onB2Click);
    connect(b3, &QPushButton::clicked, this, &Fenetre::onB3Click);
    connect(bQuit, &QPushButton::clicked, this, &QApplication::quit);
}

void Fenetre::onB1Click() {
    tB->setText("Bouton 1 cliqué");
}

void Fenetre::onB2Click() {
    tB->setText("Bouton 2 cliqué");
}

void Fenetre::onB3Click() {
    tB->setText("Bouton 3 cliqué");
}
