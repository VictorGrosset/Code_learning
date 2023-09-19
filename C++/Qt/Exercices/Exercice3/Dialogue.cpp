#include "Dialogue.h"

Dialogue::Dialogue(QWidget *parent) : QDialog(parent) {

    dMonDialogue = new QDialog(this);

    bAnnuler = new QPushButton("Annuler", dMonDialogue);
    bOk = new QPushButton("Valider", dMonDialogue);
    lMonTexte = new QLineEdit(dMonDialogue);

    connect(bAnnuler, &QPushButton::clicked, this, &Dialogue::onAnnulerClique);
    connect(bOk, &QPushButton::clicked, this, &Dialogue::onOkClique);
}

void Dialogue::onAnnulerClique() {
    mAnnuler = new QMessageBox(this);
}

void Dialogue::onOkClique() {
    mOk = new QMessageBox(this);
}

Dialogue::~Dialogue() {}
