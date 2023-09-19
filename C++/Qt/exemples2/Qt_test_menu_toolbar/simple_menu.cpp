//
// Created by victor on 06/03/23.
//
#include <QMenu>
#include <QMenuBar>
#include <QFileDialog>
#include "simple_menu.h"

SimpleMenu::SimpleMenu(QWidget *parent) : QMainWindow(parent) {
    auto *quit = new QAction("&Quit", this);
    auto *about = new QAction("&open", this);

    QMenu *file = menuBar()->addMenu("&file");
    file->addAction(about);
    file->addAction(quit);

    connect(quit, &QAction::triggered, qApp, QApplication::quit);
    connect(about, &QAction::triggered, qApp, QApplication::aboutQt);
}