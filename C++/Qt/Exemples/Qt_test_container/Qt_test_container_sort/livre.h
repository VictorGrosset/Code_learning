class Livre {

  public:
    Livre(QString, QString);
    QString getTitre();
    QString getAuteur();


  private:
    QString auteur;
    QString titre;
};
