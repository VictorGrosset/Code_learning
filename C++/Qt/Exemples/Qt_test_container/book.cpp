#include <QString>
#include "book.h"

Livre::Livre(QString aut, QString tit) {
  auteur = aut;
  titre = tit;
}

QString Livre::getAuthor() {
  return auteur;
}

QString Livre::getTitle() {
  return titre;
}







