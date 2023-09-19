#ifndef PLUSMOINS_H
#define PLUSMOINS_H

#include <QWidget>
#include <QApplication>
#include <QPushButton>
#include <QLabel>

  class CalcSimple : public QWidget {
    Q_OBJECT //pour signaux et slots

  public:
    CalcSimple(QWidget *parent = nullptr);

  private slots:
    void Addition();
    void Multiplication();

  private:
    QLabel *label;
  };

#endif // PLUSMOINS_H
