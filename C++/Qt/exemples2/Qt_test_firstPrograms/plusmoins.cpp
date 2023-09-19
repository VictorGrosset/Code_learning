#include "plusmoins.h"
#include <QGridLayout>


CalcSimple::CalcSimple(QWidget *parent) : QWidget(parent) {
  auto *boutonPlus = new QPushButton("+", this);
  auto *boutonMultiplier = new QPushButton("*", this);
  label = new QLabel("0", this);

  auto *grid = new QGridLayout(this);
  grid->addWidget(boutonPlus, 0, 0);
  grid->addWidget(boutonMultiplier, 0, 1);
  grid->addWidget(label, 1, 1);

  setLayout(grid);

  connect(boutonPlus, &QPushButton::clicked, this, &CalcSimple::Addition);
  connect(boutonMultiplier, &QPushButton::clicked, this, &CalcSimple::Multiplication);
}

void CalcSimple::Addition() {
  int val = label->text().toInt();
  val++;
  label->setText(QString::number(val));
}

void CalcSimple::Multiplication() {
  int val = label->text().toInt();
  val = val * 0.5;
  label->setText(QString::number(val));

}
