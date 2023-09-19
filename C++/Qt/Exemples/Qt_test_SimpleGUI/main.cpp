#include <QApplication>
#include <QWidget>

int main(int argc, char* argv[])
{
    QApplication app(argc, argv);

    QWidget window;

    window.resize(400,1024);
    window.setWindowTitle("Ma première GUI");
    window.show();

    return app.exec();
}
