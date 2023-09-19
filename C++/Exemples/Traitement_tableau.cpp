#include <iostream>
#include <random>
using namespace std;

void traitement_tab(int*, int, int*, int*, int*);                               //prototype de la fonction traitement_tab

int main(void)
{
    //clear console
    system("clear");

    int min , max, max_possible_value;                                          //définition de variables
    //début RNG
    random_device random_seed;
    mt19937 gen(random_seed());
    uniform_int_distribution<> length_tab(1,5);                                 //tableau de longueur de 1 à 5
    uniform_int_distribution<> range_tab_value(1, 5);                           //tableau contenant les valeurs de 1 à 5
    
    
    const int Length = length_tab(gen);                                         //la longueur du tableau est stockée dans une constante
    int tab [Length];                                                           //initialisation du tableau à la longueur aléatoire
    max_possible_value = range_tab_value.max();                                 //Valeur max que peut prendre une valeur du tableau
    
    for (int i = 0; i < Length ; i++)                                           //à mettre dans une fonction pour s'ssurer que la RNG soit conforme
    {
        tab[i] = range_tab_value(gen);                                          //le tableau est rempli dans sa totalité de variables aléatoires
    }
    //fin RNG

    int *p_max_possible_value = &max_possible_value;                            //le pointeur contient l'adresse de max_possible_value
    int *p_min = &min, *p_max = &max;                                           //pointeur sur adresse de min et max

    traitement_tab(tab, Length, p_max_possible_value, p_min, p_max);            //appelle la fonction traitement en envoyant valeur et pointeurs

    cout << "min = " << *p_min << " - " << "max = " << *p_max << endl;          //retourne la valeur min et max de tab en fin de main

    return 0;
}

void traitement_tab (int *tab, int Length, int *max_val, int *min, int *max)
{
    int buffer_max_val = *max_val;                                              //créer une valeur (buffer) sur la valeur de *max_val
    int buffer_min_val = 0;                                                     

    for (int i=0; i<Length; i++)                                                //parcours du tableau de l'index 0 à la valeur max
    {
    cout << i+1 <<". " << tab[i] << endl;                                       //affiche la valeur de chaque index de 1 à la longueur max du tableau

        if (tab[i] <= buffer_max_val)                                           //Determination de la valeur max. On remplace la valeur max trouvée jusqu'ici par la plus grande trouvée récursivement
        {
            buffer_max_val = tab[i];
        }

        if (tab[i] > buffer_min_val )                                           //Determination de la valeur min. Même principe que pour la valeur max
        {
            buffer_min_val = tab[i];
        }    
    }
    *min = buffer_max_val;                                                      //On stocke la valeur max dans la valeur contenue par le point p_max
    *max = buffer_min_val;                                                      //On stocke la valeur min dans la valeur contenue par le point p_min
}
