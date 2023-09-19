#include <QTextStream>
#include <QList>
#include <algorithm>
#include "livre.h"

using namespace std;

bool compParTitre(Livre &b1, Livre &b2) {
  return b1.getTitre()<b2.getTitre();
}

int main(void)
{
  QTextStream out(stdout);

  QList<Livre> livres = {
    Livre("Les fourmis", "Bernard Werber"),
    Livre("2001 l'odyssée de l'espace", "Arthur C. Clarke"),
    Livre("Le sorceleur", "Andrzej Szapkowski"),
    Livre("Hamlet", "Wilmiam Shakespear"),
    Livre("L'appel de Cthulhu", "Lovecraft")
  };

  sort(livres.begin(), livres.end(), compParTitre);

  for(Livre val : livres) {
      out << val.getAuteur() << ": " << val.getTitre() << Qt::endl;
    }

  return 0;
}
