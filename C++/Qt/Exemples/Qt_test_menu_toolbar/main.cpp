#include <QApplication>
#include <QPushButton>
#include "simple_menu.h"

int main(int argc, char *argv[]) {
    QApplication a(argc, argv);
    SimpleMenu window;

    window.resize(500,500);
    window.setWindowTitle("menu bar");
    window.show();

    return QApplication::exec();
}
