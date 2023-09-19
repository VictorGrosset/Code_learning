//https://zetcode.com/gui/qt5/strings/
#include <QTextStream>
#include <QStringRef>
#include <QString>
#include <chrono>
#include <thread>
#include <QFile>
#include <QDir>

using namespace std;

int phantom(void)
{
  QTextStream out(stdout);


  /* basic.cpp
   QString myString {"travaille"};

   myString.append(" à la SOPEMEA");
   myString.prepend("je ");

   out << myString << Qt::endl;
   out << "La phrase comporte " << myString.length() << " lettres " << Qt::endl;

   out << myString.toLower() << Qt::endl;
   out << myString.toUpper() << Qt::endl;
  */

  /* init.cpp
  QString ex_str = "j'aime FdB";

  QString ex_str2 = ("c'est pas la joie");

  QString ex_str3 = {"Encore ?"};

  std::string s1 = "SOAD";
  QString ex_str4 = s1.c_str();

  std::string s2 = "A thick booty";
  QString ex_str5 = QString::fromLatin1(s2.data(), s2.size());

  char s3[] = "blowjob";
  QString ex_str6(s3);


  out << ex_str << Qt::endl;
  out << ex_str2 << Qt::endl;
  out << ex_str3 << Qt::endl;
  out << ex_str4 << Qt::endl;
  out << ex_str5 << Qt::endl;
  out << ex_str6 << Qt::endl;
  */

  /* access.cpp
   *Un QString est une séquence de QChars, on peut y accéder comme par leur index []
  QString str_7 {"Drift"};
  out << str_7[2] << Qt::endl;

  int i = 0;              //on peut afficher une partie du QString
  while(i<3)
    {
      out << str_7[i];
      i++;
    }

  if (str_7.at(4).isNull())
    {
      out << "out of range dude" << Qt::endl;
    }
  out << Qt::endl;

  out << str_7.at(1) << Qt::endl;
  */

  /* length.cpp
  QString str_8 = "canard";

  out << str_8.length() << Qt::endl;
  */

  /* building.cpp
   *Build string. On peut créer des caractères de controles et les remplacer dynamiquement
  QString str_9 = {"j'ai %1 euros en poche"};

  int n = 100;

  out << str_9.arg(n) << Qt::endl;

  QString var1 = "champs électrique";
  QString var2 = "champs magnétique";
  QString str_10 = "Un champ électromagnétique est composé d'un %1 et d'un %2";

  out << str_10.arg(var1).arg(var2) << Qt::endl;
  */

  /* substrings.cpp
   *substring. Accés à un QString par morceau
  QString str_11 = "Longue vie à la maquerelle";

  out << str_11.length() << Qt::endl;
  out << str_11.right(10) << Qt::endl;
  out << str_11.left(6) << Qt::endl;
  out << str_11.mid(7, 9) << Qt::endl;  //position 7 de longueur 9

  QStringRef sub(&str_11, 7,19);        //on créer une référence d'une portion de str_11 qui commence à l'index 7 de longueur 19
  out << sub.toString() << Qt::endl;    //on converti le QStringRef en String pour l'afficher dans la sortie standard
  */

  /* looping.cpp
  QString str_12 = "Pharmacie";

  for(QChar qc: str_12)
    {
      out << qc << " ";
    }
  out << Qt::endl;

  for(QChar *it=str_12.begin(); it!=str_12.end(); ++it)
    {
      out << *it << " ";
    }
  out << Qt::endl;

  for( int i = 0; i < str_12.size(); ++i)
    {
      out << str_12.at(i) << " ";
    }
  out << Qt::endl;
  */

  /* comparing.cpp
  #define STR_EQUAL 0

  QString str_13 {"Pluie"};
  QString str_14 {"pluie"};
  QString str_15 {"pluie\n"};

  if(QString::compare(str_13,str_15) == STR_EQUAL)  // si compare == 0 , il n'y a pas de différence
    {
      out << "str_13 et str_14 sont identiques" << Qt::endl;
    }
  else
    {
      out << "str_13 et str_14 ne sont pas identiques" << Qt::endl;
    }

  out << "Sensibilité à la casse" << Qt::endl;

  if (QString::compare(str_13,str_14,Qt::CaseSensitive) == STR_EQUAL)
    {
      out << "str_13 et str_14 sont identiques" << Qt::endl;
    }
  else
    {
      out << "str_13 et str_14 ne sont pas identiques" << Qt::endl;
    }

  out << "insensibilité à la casse" << Qt::endl;

  if (QString::compare(str_13,str_14,Qt::CaseInsensitive) == STR_EQUAL)
    {
      out << "str_13 et str_14 sont identiques" << Qt::endl;
    }
  else
    {
      out << "str_13 et str_14 ne sont pas identiques" << Qt::endl;
    }

  if(QString::compare(str_14,str_15) == STR_EQUAL)
    {
      out << "str_14 et str_15 sont identiques" << Qt::endl;
    }
  else
    {
      out << "str_14 et str_15 ne sont pas identiques" << Qt::endl;
    }

  str_15.chop(1); //retire le nombre de charactère à la fin du QString
      if(QString::compare(str_14,str_15) == STR_EQUAL)
        {
          out << "str_14 et str_15 sont identiques" << Qt::endl;
        }
      else
        {
          out << "str_14 et str_15 ne sont pas identiques" << Qt::endl;
        }
  */

  /* converting.Cpp
  QString str_16 {"656"};
  QString str_17 = "69";
  QString str_18, str_19;

  out << str_16.toInt() + str_17.toInt() << Qt::endl; //fait une addition de int

  int n1=457; double n2=3.14;

  out << str_18.setNum(n1) + str_19.setNum(n2) << Qt::endl; //fait une concaténation de Qstring
  */

  /* letters.cpp
  int chiffre = 0;
  int lettre = 0;
  int ponctuation = 0;
  int espace = 0;
  QString str_20 {"7 blanc, 3 roses"};

  for(QChar s : str_20)
    {
      if(s.isDigit())
        {
          chiffre++;
        }
      else if(s.isLetter())
        {
          lettre++;
        }
      else if(s.isSpace())
        {
          espace++;
        }
      else
        {
          ponctuation++;
        }
    }

  out << QString("il y %1 charactères en tout").arg(str_20.length()) << Qt::endl;
  out << QString("il y a %1 lettre(s)").arg(lettre) << Qt::endl;
  out << QString("il y a %1 chiffre(s)").arg(chiffre) << Qt::endl;
  out << QString("il y a %1 signe(s) de ponctuation").arg(ponctuation) << Qt::endl;
  out << QString("il y a %1 espace(s)").arg(espace) << Qt::endl;
  */

  /* modify.cpp
  QString str_21 {"énorme"};
  str_21.append("comme concert");
  out << str_21 << Qt::endl;

  str_21.remove(1, 2);          //enlève deux lettres après le charactère 1
  out << str_21 << Qt::endl;

  str_21.replace(5, 4, "696969"); //remplace 4 lettres après le charactère 5
  out << str_21 << Qt::endl;

  str_21.clear();                 //vide le QString
  if(str_21.isEmpty())
    {
      out << "the string est vide maaaaan!" << Qt::endl;
    }
  */

  /* right_align.cpp
  QString champ1 {"nom: "};
  QString champ2 {"poste: "};
  QString champ3 = "situation maritale: ";
  QString champ4 = ("lieu de résidence: ");

  int width = champ4.length()+5;

  out << champ1.rightJustified(width, '_') << "V.GROSSET\n";
  out << champ2.rightJustified(width, '-') << "Techos" << Qt::endl;
  out << champ3.rightJustified(width, '%') << "Veuf\n";
  out << champ4.rightJustified(width, '&') << "tournefeuille\n";
  */

  /* html_escape.cpp
   *Escape character : conversion des caratères de terminaison en HTML + export de la version corrigée dans test.txt dans le même dossier
  QDir::setCurrent("/home/victor/Documents/Qt_creator/Qt_test_string");
  QFile fichier("test.c");
  QFile fichier2("test.txt");


  if(!fichier.open(QIODevice::ReadOnly))
    {
      qWarning("fichier non accessible en lecture");
      fichier.close();
      return 1;
    }

  if(!fichier2.open(QIODevice::ReadWrite))
    {
      qWarning("cannot write in test.txt");
      return 1;
    }

  QTextStream in(&fichier);

  QString contenu = in.readAll();
  out << contenu.toHtmlEscaped() << Qt::endl;

  QTextStream stream(&fichier2);
  stream << contenu << Qt::endl;

  fichier.close();
  */


    return 0;
}
