#ifndef DIALOGUE_H
#define DIALOGUE_H

#include <QDialog>
#include <QApplication>
#include <QLineEdit>
#include <QMessageBox>
#include <QPushButton>

class Fenetre;

class Dialogue : public QDialog {
    Q_OBJECT

public:
    Dialogue(QWidget *parent = nullptr);
    ~Dialogue();

private:
    Fenetre *fenetre;

    QDialog *dMonDialogue;

    QLineEdit *lMonTexte;

    QPushButton *bAnnuler;
    QMessageBox *mAnnuler;

    QPushButton *bOk;
    QMessageBox *mOk;

private slots:
    void onAnnulerClique();
    void onOkClique();
};

#endif //DIALOG_H
