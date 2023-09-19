#include <stdio.h>
#include <time.h>

#define X_PIXEL 128
#define Y_PIXEL 64
#define MY_CHAR "x"

typedef enum {FALSE, TRUE} bool;
volatile bool interruption_signal = FALSE;
bool interruption_handled = FALSE;
volatile bool end_program = FALSE;
time_t start_time;

void handle_interrupt(int time_passed);
void display();

int main() {
    start_time = time(NULL);
    int timer = 3;

    while(!end_program) {
        time_t current_time = time(NULL);
        int time_passed = (int)difftime(current_time, start_time);

        if(interruption_signal && !interruption_handled) {
            interruption_handled = TRUE;
            handle_interrupt(time_passed);
            start_time = current_time;
        }
        if(time_passed >= timer) {
            interruption_signal = TRUE;
            interruption_handled = FALSE;
        }
        //printf("Pas d'interruption\n");
    }

    printf("Fin du programme\n");
    return 0;
}

void handle_interrupt(int time_passed) {
    display();
    printf("start time : %ld current time : %d\n", start_time, time_passed);
}

void display() {
    static int counter = 0;
    counter += 1;
    printf("%d interruption(s)\n", counter);
    if(counter == 5) {
        end_program = TRUE;
    }
}
