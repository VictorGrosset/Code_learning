//https://zetcode.com/gui/qt5/firstprograms/
#include <QApplication>
#include <QWidget>
#include <QFrame>
#include <QGridLayout>
#include <QPushButton>
#include "plusmoins.h"


class Cursors : public QWidget {          // cursors.cpp

 public:
     Cursors(QWidget *parent = nullptr);
};

class MyButton : public QWidget {         //pushbutton.cpp

public:
    MyButton(QWidget *parent = nullptr);
};


  Cursors::Cursors(QWidget *parent)       // cursors.cpp
    : QWidget(parent) {

  auto *frame1 = new QFrame(this);
  frame1->setFrameStyle(QFrame::Box);
  frame1->setCursor(Qt::SizeAllCursor);

  auto *frame2 = new QFrame(this);
  frame2->setFrameStyle(QFrame::Box);
  frame2->setCursor(Qt::WaitCursor);

  auto *frame3 = new QFrame(this);
  frame3->setFrameStyle(QFrame::Box);
  frame3->setCursor(Qt::PointingHandCursor);

  auto *grid = new QGridLayout(this);
  grid->addWidget(frame1, 0, 0);
  grid->addWidget(frame2, 0, 1);
  grid->addWidget(frame3, 0, 2);

  setLayout(grid);
}

  MyButton::MyButton(QWidget *parent)
    : QWidget(parent) {

   auto *quitButton = new QPushButton("Quitter", this);
   quitButton->setGeometry(50, 40, 75, 30);

   connect(quitButton, &QPushButton::clicked, qApp, &QApplication::quit);
  }

int main(int argc, char* argv[])
{
  /* simple.cpp
  QApplication monApp(argc, argv);
  QWidget maFenetre;

  maFenetre.resize(1024,1024);
  maFenetre.setWindowTitle("Pouet !!!!");
  maFenetre.show();

  monApp.exec();
  */

  /* tooltip.cpp
  QApplication monApp(argc, argv);
  QWidget maFenetre;

  maFenetre.resize(1024,1024);
  maFenetre.setWindowTitle("Pouet !!!!");
  maFenetre.setToolTip("une fenetre");
  maFenetre.setToolTipDuration(10000);
  maFenetre.show();

  monApp.exec();
  */

  /*cursors.cpp
  QApplication app(argc, argv);

  Cursors window;

  window.resize(1024, 1024);
  window.setWindowTitle("Curseurs");
  window.show();

  return app.exec();
  */

  /*pushbutton.cpp
  QApplication app(argc, argv);
  MyButton window;

  window.resize(1024,1024);
  window.setWindowTitle("Push Button");
  window.show();

  return app.exec();
  */

  //plusminus.cpp
  QApplication monApp(argc, argv);
  CalcSimple window;

  window.resize(200, 200);
  window.setWindowTitle("plus moins");
  window.show();

  return monApp.exec();


  return 0;
}
