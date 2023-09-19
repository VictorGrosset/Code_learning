#ifndef FENETRE_H
#define FENETRE_H

#include <QApplication>
#include <QWidget>
#include <QLabel>
#include <QPushButton>
#include <QLayout>

class Fenetre : public QWidget{
    Q_OBJECT

public:
    Fenetre(QWidget *parent = nullptr);

private:
    QLabel *tB;
    QPushButton *b1;
    QPushButton *b2;
    QPushButton *b3;
    QPushButton *bQuit;
    QGridLayout *monLayout;

private slots:
    void onB1Click();
    void onB2Click();
    void onB3Click();
};

#endif //FENETRE_H
