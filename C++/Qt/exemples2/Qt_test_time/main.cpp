//https://zetcode.com/gui/qt5/datetime/
#include <QTextStream>
#include <QDate>
#include <QTime>
#include <ctime>
#include <QDateTime>

using namespace std;

int main(void)
{
  QTextStream out(stdout);

  /* init.cpp
  QDate date1 {2023, 03, 13}; //année - mois - jour
  out << "Mon anniversaire est le " << date1.toString() << Qt::endl;

  QDate date2;
  date2.setDate(2023, 02, 27);
  out << "L'anniversaire de Plorian est le " << date2.toString() << Qt::endl;

  QTime time1 {13, 00, 00, 00}; //hh:mm:ss:msms
  out << "Papi et Tata regardait tous les jours les feux de l'amour à " << time1.toString() << " précisement" << Qt::endl;

  QTime time2;
  time2.setHMS(00,00,00,00);
  out << "L'horloge reset à " << time2.toString() << Qt::endl;
  */

  /* Current_datetime.cpp
  QDate ajd = QDate::currentDate();
  QTime tds = QTime::currentTime();
  out << "Nous somme le " << ajd.toString() << " et il est " << tds.toString() << Qt::endl;
  */

  /* Compare_dates.cpp
  QDate date1 {2023, 03, 13};
  QDate date2 {2023, 03, 30};

  if(date1 < date2) {
      out << date1.toString() << " arrive avant " << date2.toString() << Qt::endl;
    }

  else {
      out << date2.toString() << " arrive avant " << date1.toString() << Qt::endl;
    }
  */

  /* leapyear.cpp (année bisextile)
  QList<int> années({2010,2011,2012,2013,2014,2015,2016,2020,2024});

  for (int année: années){
      if (QDate::isLeapYear(année)) {
          out << année << " est une année bisextile" << Qt::endl;
        }
      else {
          out << année << " n'est une année bisextile" << Qt::endl;
        }
    }
  */

  /* predefined_date_formats.cpp
  QDate ajd = QDate::currentDate();

  out << "Nous sommes le " << ajd.toString(Qt::TextDate) << Qt::endl;
  out << "Nous sommes le " << ajd.toString(Qt::ISODate) << Qt::endl;
  */

  /* custom_date_formats.cpp
  QDate ajd = QDate::currentDate();

  out << "Nous sommes le " << ajd.toString("dd-MM-yyyy") << Qt::endl;
  out << "Nous sommes le " << ajd.toString("yyyy/M$dd") << Qt::endl;
  */

  /* predefined_time_formats.cpp
  QTime tds = QTime::currentTime();
  out << "Il est " << tds.toString(Qt::TextDate) << Qt::endl;
  out << "Il est " << tds.toString(Qt::ISODate) << Qt::endl;
  */

  /* custom_time_formats.cpp
  QTime tds = QTime::currentTime();
  out << "Il est " << tds.toString("H:mm:s:zzz t A ap");
  */

  /* weekday.cpp
  QDate ajd=QDate::currentDate();
  int j_semaine = ajd.dayOfWeek();

  QLocale francais(QLocale::French);

  out << "Aujourd'hui, nous sommes " << francais.dayName(j_semaine) << Qt::endl;
  out << "Aujourd'hui, nous sommes le " << francais.dayName(j_semaine, QLocale::LongFormat) << Qt::endl;
  out << "Aujourd'hui, nous sommes le " << francais.dayName(j_semaine, QLocale::ShortFormat) << Qt::endl;
  */

  /* nofdays.cpp
  QList<QString> mois;

  mois.append("janvier");
  mois.append("février");
  mois.append("mars");
  mois.append("avril");
  mois.append("mai");
  mois.append("juin");
  mois.append("juillet");
  mois.append("aôut");
  mois.append("septembre");
  mois.append("octobre");
  mois.append("novembre");
  mois.append("décembre");

  QDate date1 {2023, 01, 26};
  QDate date2 {2023, 11, 25};
  QDate date3 {2023, 03, 13};
  QDate date4 {2024, 01, 01};
  QDate date5 {2050, 01, 01};

  out << "Il y a " << date1.daysInMonth() << " jours dans " << mois.at(date1.month()-1) << Qt::endl;
  out << "Il y a " << date2.daysInMonth() << " jours dans " << mois.at(date2.month()-1) << Qt::endl;
  out << "Il y a " << date3.daysInMonth() << " jours dans " << mois.at(date3.month()-1) << Qt::endl;
  out << "Il y a " << date4.daysInMonth() << " jours dans " << mois.at(date4.month()-1) << Qt::endl;
  out << "Il y a " << date5.daysInMonth() << " jours dans " << mois.at(date5.month()-1) << Qt::endl;

  out << "il y a " << date4.daysInYear() << " jours dans l'année " << QString::number(date4.year()) << Qt::endl;
  */

  /* validity.cpp
  QList<QDate> dates{
    QDate(2023, 13, 03), QDate(2023, 02, 27), QDate(2023, 07, 07)
  };

  for (int i = 0; i < dates.size(); i++) {
      if (dates.at(i).isValid()) {
          out << dates.at(i).toString() << " est valide" << Qt::endl;
        }
      else {
          out << dates.at(i).toString() << " n'est pas valide" << Qt::endl;
        }

    }
  */

  /* daystofrom.cpp
  QDate noel {2023, 12, 25};
  QDate ajd = QDate::currentDate();
  QDate rdv = ajd.addDays(71);

  int annee = ajd.year();

  out << "il reste " << QDate::currentDate().daysTo(noel) << " jusqu'à noel" << Qt::endl;
  out << "le rendes vous dans 71 jours tombera le " << rdv.toString() << Qt::endl;
  */

  /* datetime.cpp
  QDateTime ajd = QDateTime::currentDateTime();
  QLocale francais(QLocale::French);

  out << "Nous sommes le " << ajd.toString() << Qt::endl;
  out << "Il est " << ajd.time().toString() << Qt::endl;
  out << "Nous sommes " << ajd.date().toString() << Qt::endl;
  */

  /* julianday.cpp
  QDate ajd = QDate::currentDate();

  out << "gregorian date is " << ajd.toString(Qt::ISODate) << Qt::endl;
  out << "julian date is " << ajd.toJulianDay() << Qt::endl;
  */

  /* battles.cpp
  QDate fete_nationale {1789, 07, 14};
  QDate naissance {1993, 03, 13};
  QDate ajd = QDate::currentDate();

  int j_ajd = ajd.toJulianDay();
  int j_fete_nationale = fete_nationale.toJulianDay();
  int j_naissance = naissance.toJulianDay();

  out << "Il s'est passé " << j_ajd - j_fete_nationale << " jours depuis l'indépendance" << Qt::endl;
  out << "Il s'est passé " << j_ajd - j_naissance << " jours depuis ma naissance" << Qt::endl;
  */

  /* utc_local
  QDateTime ajd = QDateTime::currentDateTime();

  out << "Universal datetime is " << ajd.toUTC().toString() << Qt::endl;
  out << "Datetime is "<< ajd.toLocalTime().toString() << Qt::endl;
  */

  /* unix_epoch.cpp
  time_t t = time(0);
  out << t << Qt::endl;


  QDateTime ajd = QDateTime::currentDateTime();
  out << ajd.toTime_t()<< Qt::endl;
  */


  return 0;
}
