#include "ExTime.h"

ExTime::ExTime() {
    this->heures = 0;
    this->minutes = 0;
    this->secondes = 0;
}

ExTime::ExTime(int hh, int mm, int ss) {          
        heures = hh;
        minutes = mm;
        secondes == ss;    
}

void ExTime::setTime(int hh, int mm, int ss) {
    heures = hh;
    minutes = mm;
    secondes == ss;
}

std::string ExTime::getTime12() const{
    if(heures > 12) {
    return "Heure locale " + std::to_string(heures-12) + "h " + std::to_string(minutes) + "m " +std::to_string(secondes) + "s PM";
    }
    else {
    return "Heure locale " + std::to_string(heures) + "h " + std::to_string(minutes) + "m " +std::to_string(secondes) + "s AM";
    }
   
}

std::string ExTime::getTime24() const{
    return "Heure locale " + std::to_string(heures) + "h " + std::to_string(minutes) + "m " +std::to_string(secondes) + "s";
}