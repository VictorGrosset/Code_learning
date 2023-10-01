#include <stdio.h>
#include <time.h>
#include <wait.h>
#include <unistd.h>
#include <math.h>

#define X_PIXEL 128
#define Y_PIXEL 64
#define PI 3.14159
#define FREQUENCE 10
#define AMPLITUDE 1

typedef enum{False, True} bool;

int main() {
    struct timespec start_ts;
    clock_gettime(CLOCK_REALTIME, &start_ts);
    double start_time_s = start_ts.tv_sec + start_ts.tv_nsec / 1e9;     //temps de départ en s
    char systeme_coordonnee[Y_PIXEL][X_PIXEL];

    for(int y = 0; y < Y_PIXEL; y++) {
        for(int x = 0; x < X_PIXEL; x++) {
            systeme_coordonnee[y][x] = ' ';
        }
    }


    while(True) {
        struct timespec ts;
        clock_gettime(CLOCK_REALTIME, &ts);
        double time_s = ts.tv_sec + ts.tv_nsec / 1e9;                   //nouveau temps en s
        double elapsed_time = (time_s - start_time_s) * 1000;             //difference debut-présent + scale 1 ms = 1 pixel
        int elapsed_time_whole = (int)elapsed_time;

        double y = AMPLITUDE * sin(2*PI*FREQUENCE*elapsed_time_whole) * 31;//scale 1 = 31 -1 = -31 pixel
        int y_whole = (int)y;

        if(elapsed_time_whole >= X_PIXEL) {
            for (int y_ = 0; y_ < Y_PIXEL; y_++) {
                for (int x_ = 0; x_ < X_PIXEL; x_++) {
                    printf("%c", systeme_coordonnee[y_][x_]);
                }
                printf("\n");
            }
            return 0;
        }
        else {
            //printf("t: %.3f\n y: %.1f\n\n", elapsed_time, y);
            systeme_coordonnee[y_whole][elapsed_time_whole] = '*';
        }


        struct timespec sleep_time = {0, 1000000}; // Sleep for 1ms
        nanosleep(&sleep_time, NULL);
    }
    return 0;
}

//A faire,
//    centrer le sinus sur le zero
//      faire défiler le sinus

