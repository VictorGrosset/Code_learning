//https://zetcode.com/gui/qt5/containers/
#include <QTextStream>
#include <QVector>
#include <algorithm>
#include <QSet>
#include <QMap>

using namespace std;

int main(void)
{

  QTextStream out(stdout);

  /* myvector.cpp
  QVector<int> tab = {1,2,3,4,5};

  out << "la taille du vector est " << tab.size() << Qt::endl;
  out << "la première valeur est " << tab.first() << Qt::endl;
  out << "la dernière valeur est " << tab.last() << Qt::endl;

  tab.append(6);
  tab.prepend(0);

  out << "Elements: ";

  for (int test : tab) {
      out << test << " ";
    }

  out << Qt::endl;
  */

  /* mylist.cpp
  QList<QString> auteurs = {"Balzac", "Tolstoy", "Gulbranssen", "London"};

  for (int i = 0; i < auteurs.size(); i++) {
      out << auteurs.at(i) << Qt::endl;
    }

  out << Qt::endl;

  auteurs << "Werber" << "Baffie";

  for (int i = 0; i < auteurs.size(); i++) {
      out << auteurs.at(i) << Qt::endl;
    }

  sort(auteurs.begin(), auteurs.end()); //sensible à la casse


  out << auteurs.size() << Qt::endl;

  for(const QString &auteur : auteurs) {
      out << auteur << Qt::endl;
    }
  */

  /* mystringlist.cpp
  QString cdc = "pièce, livre, verre, crayon, montre, marque-page";
  QStringList objets = cdc.split(","); //chaine de caractère transformée en list délimitée par ","
  QStringListIterator it(objets);

  while (it.hasNext()) {
      out << it.next().trimmed() << Qt::endl; //trimmed pour enlever les espaces
    }
  */

  /* myset.cpp
  QSet<QString> cols1 = {"jaune", "red", "bleu"};
  QSet<QString> cols2 = {"bleu", "rose", "orange"};
  out << "Il y a" << cols1.size() << "couleur dans ce set" << Qt::endl;

  cols1.insert("marron");
  out << "Il y a" << cols1.size() << "couleur dans ce set" << Qt::endl;

  cols1.unite(cols2);
  out << "Il y a" << cols1.size() << "couleur dans ce set" << Qt::endl;

  for (const QString &couleur : cols1) {
      out << couleur << " ";
    }
  out << Qt::endl;

  QList<QString> lcols = cols1.values();
  sort(lcols.begin(), lcols.end());

  for (const QString &val : lcols) {
      out << val << " ";
    }
  out << Qt::endl;
  */

  /* mymap.cpp
  QMap<QString, int> map = { {"livres", 5}, {"billets", 10} };
  map.insert("cigarettes", 15);


  QList<int> nb = map.values();
  out << "j'ai :" << Qt::endl;

  for (const int &val : nb) {
      out << val << " ";
    }
  out << Qt::endl ;


  QList<QString> cle = map.keys();
  out << "clés associées" << Qt::endl;

  for(const QString &val : cle) {
      out << val << " ";
    }
  out << Qt::endl;


  QMapIterator<QString, int> it(map);

  out << "par paires" << Qt::endl;

  while (it.hasNext()) {
      it.next();
      out << it.key() << ": " << it.value() << Qt::endl;
    }
  */


  return 0;
}
