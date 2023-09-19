#ifndef FENETRE_H
#define FENETRE_H

#include "Dialogue.h"

#include <QWidget>
#include <QApplication>
#include <QLayout>
#include <QPushButton>
#include <QSpacerItem>

class Fenetre : public QWidget {
    Q_OBJECT

public:
    Fenetre(QWidget *parent = nullptr);
    ~Fenetre();

private:
    Dialogue *monDialogue;

    QGridLayout *monLayout;
    QPushButton *bAfficherDialogue;

    QSpacerItem *hSpace;
    QSpacerItem *h1Space;
    QSpacerItem *vSpace;
    QSpacerItem *v1Space;
};

#endif //FENETRE_H
