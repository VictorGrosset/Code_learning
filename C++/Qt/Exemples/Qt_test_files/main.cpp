//https://zetcode.com/gui/qt5/files/
#include <QTextStream>
#include <QFileInfo>
#include <QFile>
#include <QDateTime>
#include <QDir>

using namespace std;

int main(int argc, char *argv[])
{
  QTextStream out{stdout};

  /* file_size.cpp
  //A lancer dans une console avec le nom d'un fichier en argument
  //argc = argument count et argv[] = argument vector
  //Argv[0] est le répertoire et l'incrément désigne les argument passé suivant eg: ./Qt_test_file main.o
  if (argc != 2) {
      qWarning("Usage: ./file_size file");
      return 1;
    }

  QString nomFichier = argv[1];
  QFile f{nomFichier};

  if (!f.exists()) {
      qWarning("Le fichier n'existe pas");
      return 1;
    }

  QFileInfo infoFichier{nomFichier};
  qint64 taille = infoFichier.size();
  QString str = "Le fichier fait %1 bytes";

  out << str.arg(taille) << Qt::endl;
  */

  /* read_file.cpp
  QFile fichier{"text.txt"};

  if (!fichier.open(QIODevice::ReadOnly)) {
      qWarning("Cannot open file for reading");
    }

  QTextStream in{&fichier};

  while (!in.atEnd()) {
      QString ligne = in.readLine();
      out << ligne << Qt::endl;
    }
  */

  /* write_file.cpp
  //création et/ou écriture dans un fichier puis lecture de celui-ci après
  QString nomFichier = "distro.txt";
  QFile f{nomFichier};

  if (f.open(QIODevice::WriteOnly)) {
      QTextStream out{&f};
      out << "Ubuntu" << Qt::endl;
      out << "Fedora" << Qt::endl;
      out << "Mint" << Qt::endl;
      out << "RedHat" << Qt::endl;
      out << "Debian" << Qt::endl;
    }

  else {
      out << "File is locked" << Qt::endl;
    }

    f.close();

  if (!f.open(QIODevice::ReadOnly)){
      qWarning("Cannot open the file");
    }

  QTextStream in{&f};

  while (!f.atEnd()) {
      QString ligne = f.readLine();
      out << ligne;
    }

  f.close();
  */

  /* copy_file.cpp
  if (argc != 3) {
      qWarning("Usage: ./copyfile source destination");
    }

  QString source = argv[1];

  if (!QFile{source}.exists()) {
      qWarning("The source does not exist");
    }

  QString destination = argv[2];

  QFile::copy(source, destination);
  */

  /* owner_group.cpp
  if (argc !=2) {
      qWarning("Usage: ./Owner file");
      return 1;
    }

  QString nomFichier = argv[1];
  QFileInfo infoFichier{nomFichier};

  QString groupe = infoFichier.group();
  QString proprio = infoFichier.owner();

  out << "groupe : " << groupe << Qt::endl;
  out << "propriétaire : " << proprio << Qt::endl;
  */

  /* file_times.cpp
  if (argc != 2) {
      qWarning("Usage: ./file_time file"); //nom du programme + argument(nom du fichier)
      return 1;
    }

  QString fichier = argv[1];
  QFileInfo info{fichier};

  QDateTime derniere_lecture = info.lastRead();
  QDateTime derniere_modification = info.lastModified();

  out << "Last read: " << derniere_lecture.toString() << Qt::endl << "Last modification: " << derniere_modification.toString() << Qt::endl;
  */

  /* dirs.cpp
  QDir dossier;

  if(dossier.mkdir("monDossier")) {
     out << "Le dossier a bien été créé" << Qt::endl;
  }
  dossier.mkdir("monDossier2");

  if(dossier.exists("monDossier2")) {
      dossier.rename("monDossier2", "pouet");
    }

  dossier.mkpath("temp/newDossier");
  */

  /* special_paths.cpp
  out << "Current path is: " << QDir::currentPath() << Qt::endl;
  out << "Home path is: "<< QDir::homePath() << Qt::endl;
  out << "Temporary path is: " << QDir::tempPath() << Qt::endl;
  out << "Root path is:" << QDir::rootPath() << Qt::endl;
  */

  /*file_path.cpp
  if (argc != 2) {
      qWarning("Usage: ./file_path file");
      return 1;
    }

  QString nomFichier = argv[1];
  QFileInfo infoFichier{nomFichier};

  QString absolutePath = infoFichier.absoluteFilePath();
  QString baseName = infoFichier.baseName();
  QString completeBaseName = infoFichier.completeBaseName();
  QString nomFichier2 = infoFichier.fileName();
  QString suffixe = infoFichier.suffix();
  QString completeSuffixe = infoFichier.completeSuffix();

  out << "Chemin absolu: " << absolutePath << Qt::endl;
  out << "baseName: " << baseName << Qt::endl;
  out << "Complete base name: " << completeBaseName << Qt::endl;
  out << "Nom de fichier: " << nomFichier2 << Qt::endl;
  out << "Suffixe: " << suffixe << Qt::endl;
  out << "Complete suffixe: " << completeSuffixe << Qt::endl;
  */

  /*permissions.cpp
   * QFile::permissions renvoie un int issue de la fonction ls -l file (y compris le tiret)
   * Les if font un ET logique (bit à bit) entre les permissions fichier et le Booleen QFile::readOwner par exemple
  if (argc != 2) {
      qWarning("Usage: .permissions.cpp file");
      return 1;
    }

  QString fichier = argv[1];
  auto permissions = QFile::permissions(fichier);

  QString permissionsFichier;

  if (permissions & QFile::ReadOwner) { //& ET bit à bit = fonction ET logique
      permissionsFichier.append('r');
    } else {
      permissionsFichier.append('-');
    }

  if  (permissions & QFile::WriteOwner) {
      permissionsFichier.append('w');
    } else {
      permissionsFichier.append('-');
    }

  if (permissions & QFile::ExeOwner) {
      permissionsFichier.append('x');
    } else {
      permissionsFichier.append('-');
    }

  if (permissions & QFile::ReadGroup) { //& ET bit à bit = fonction ET logique
      permissionsFichier.append('r');
    } else {
      permissionsFichier.append('-');
    }

  if  (permissions & QFile::WriteGroup) {
      permissionsFichier.append('w');
    } else {
      permissionsFichier.append('-');
    }

  if (permissions & QFile::ExeGroup) {
      permissionsFichier.append('x');
    } else {
      permissionsFichier.append('-');
    }

  if (permissions & QFile::ReadOther) { //& ET bit à bit = fonction ET logique
      permissionsFichier.append('r');
    } else {
      permissionsFichier.append('-');
    }

  if  (permissions & QFile::WriteOther) {
      permissionsFichier.append('w');
    } else {
      permissionsFichier.append('-');
    }

  if (permissions & QFile::ExeOther) {
      permissionsFichier.append('x');
    } else {
      permissionsFichier.append('-');
    }

  out << permissionsFichier << Qt::endl;
  */

  /*list_dir.cpp
  if (argc !=2) {
      qWarning("Usage: ./list_dire.cpp dossier");
      return 1;
    }

  QString dossier = argv[1];
  QDir dir{dossier};

  if (!dir.exists()) {
      qWarning("Le dossier n'existe pas");
      return 1;
    }

  dir.setFilter(QDir::Files | QDir::AllDirs);
  dir.setSorting(QDir::Name);

  QFileInfoList list = dir.entryInfoList();
  int max_size = 0;

  for (const QFileInfo &i_info : list) {
      QString name = i_info.fileName();
      int size = name.size();

      if (size > max_size) {
          max_size = size;
        }
    }

  int length = max_size+2;

  out << QString("filename").leftJustified(length).append("bytes") << Qt::endl;

  for (int i = 0; i < list.size(); ++i) {
      QFileInfo fileInfo = list.at(i);
      QString string = fileInfo.fileName().leftJustified(length);
      string.append(QString("%1").arg(fileInfo.size()));
      out << string << Qt::endl;
    }
  */

  return 0;
}
