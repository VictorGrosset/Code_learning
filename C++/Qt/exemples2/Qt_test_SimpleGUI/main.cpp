#include <QApplication>
#include <QWidget>

int main(int argc, char* argv[])
{
    QApplication app(argc, argv);

    QWidget window;

    window.resize(600,600);
    window.setWindowTitle("Ma première GUI");
    window.show();

    return app.exec();
}
