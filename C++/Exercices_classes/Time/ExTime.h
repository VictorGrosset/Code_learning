#ifndef EXTIME_H
#define EXTIME_H

#include <string>

class ExTime {
    public:
    ExTime();
    ExTime(int hh, int mm, int ss);

    void setTime(int hh, int mm, int ss);
    std::string getTime12() const;
    std::string getTime24() const;

    private:
    int heures;
    int minutes;
    int secondes;
};

#endif // EXTIME_H