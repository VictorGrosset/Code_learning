#ifndef FENETRE_H
#define FENETRE_H

#include <QWidget>
#include <QApplication>
#include <QLabel>
#include <QPushButton>
#include <QLayout>
#include <QSpacerItem>

class Fenetre : public QWidget {
    Q_OBJECT

public:
    Fenetre(QWidget *parent = nullptr);

private slots:
    void boutonClique();

private:
    QGridLayout *maDispo;
    QLabel *monLabel;
    QPushButton *monBouton;
    QPushButton *boutonQuitter;
    QSpacerItem *espaceGauche;
    QSpacerItem *espaceDroite;

};

#endif //FENETRE_H
