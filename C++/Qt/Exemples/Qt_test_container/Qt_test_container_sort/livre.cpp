#include <QString>
#include "livre.h"

Livre::Livre(QString tit, QString aut) {
  auteur = aut;
  titre = tit;
}

QString Livre::getAuteur()  {
  return auteur;
}

QString Livre::getTitre()  {
  return titre;
}
