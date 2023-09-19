#ifndef BOOK_H
#define BOOK_H
#include <QString>

class Livre {

  public:
    Livre(QString, QString);
    QString getAuthor();
    QString getTitle();

  private:
    const QString auteur;
    const QString titre;
};

#endif // BOOK_H
