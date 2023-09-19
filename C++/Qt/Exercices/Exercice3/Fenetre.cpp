#include "Fenetre.h"
#include "Dialogue.h"

Fenetre::Fenetre(QWidget *parent) : QWidget(parent) {

    monDialogue = new Dialogue(this);

    bAfficherDialogue = new QPushButton("Afficher boite de Dialogue", this);

    hSpace = new QSpacerItem(0,0, QSizePolicy::Expanding, QSizePolicy::Minimum);
    h1Space = new QSpacerItem(0,0, QSizePolicy::Expanding, QSizePolicy::Minimum);
    vSpace = new QSpacerItem(0,0, QSizePolicy::Minimum, QSizePolicy::Expanding);

    monLayout = new QGridLayout(this);
    monLayout->addItem(vSpace, 0, 0, 1, 3);
    monLayout->addItem(hSpace, 1, 0, 1, 1);
    monLayout->addWidget(bAfficherDialogue, 0, 1, 1, 1, Qt::AlignVCenter);
    monLayout->addItem(h1Space, 1, 2, 1, 1);

    connect(bAfficherDialogue, &QPushButton::clicked, monDialogue, &QDialog::exec);

}

/*void Fenetre::onAfficherDialogClique() {


}*/

Fenetre::~Fenetre() { delete monDialogue; }
