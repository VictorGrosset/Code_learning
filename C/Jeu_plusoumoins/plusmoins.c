#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <ctype.h>

int menu_select();
int gen_nb(int*);
void jeu(int, int);
//void delay(int);
//void indenter_spacer(int);


int main()
{
    int nb_max, nb_myst/*, nb_sec*/;
    srand(time(NULL));

    system("clear");
    nb_max = menu_select();
    //printf("%d\n", nb_max);
    nb_myst = gen_nb(&nb_max);
    //printf("%d\n", nb_myst);
    
    jeu(nb_max, nb_myst);//conditions du jeu établies
    

    return 0;
}



int menu_select() //sélection du menu et de la difficulté-renvoie max dans main
{
int difficulte, max;
difficulte=0, max=0;

puts("==================================================================================================================\n");
puts("======================================== Bienvenue au jeu du plus ou moins ! =====================================\n");
puts("==================================================================================================================\n");

//delay(5);
//system("clear");

puts("Veuillez choisir votre difficulte :\n\nFacile (1) - nombre compris entre 0 et 100\nMoyen (2) - nombre compris entre 0 et 150\nDifficile (3) - nombre compris entre 0 et 200\n\nCTRL+C pour quitter\n");

scanf("%d",&difficulte);

    if(difficulte > 0 && difficulte < 4)
    {

    switch (difficulte)
    {
    case 1:
        return max = 100;
        break;
    case 2:
        return max = 150;
        break;
    case 3:
        return max = 200;
        break;

    default:
        system("clear");
        puts("taper le chiffre correspondant a la difficulte dans le menu : 1,2 ou 3\n");
        menu_select();
        break;
    }
    }
    else
    {
    int menu_select();
    }
return 0;
}

int gen_nb(int* nb_max) //générateur de nombre aléatoire-passage par pointeurs-prend en compte la difficulté
{
    return (rand() % *nb_max);
}


void jeu (int nb_max, int nb_myst)
{
    int cpt, result, diff;
    cpt=0;
    
    do
    {
    result = 0;
    printf("Trouvez le nombre mystère compris entre 0 et %d\n", nb_max);
    scanf("%d", &result);
    cpt++;
        
        if(result >= 0 && result <= nb_max)
        {
            if(result>nb_myst)
            {
                diff = result - nb_myst;

                if (result == nb_myst)
                {
                    printf("Bravo, vous avez trouvé le nombre mystère %d en %d coups\n", result, cpt);
                }
               
                else if (diff < 10)
                {
                    printf("Tu chauffe");
                }
                else if (diff < 25)
                {
                    printf("Tu Tiédis");
                }
                else if (diff < 50)
                {
                    printf("Tu refroidis");
                }
                else
                {
                    printf("Tu gèles");
                }

                printf(" mais c'est moins\n\n");                                 
            }

            else 
            {
                diff = nb_myst - result;
               
                if (result == nb_myst)
                {
                    printf("Bravo, vous avez trouvé le nombre mystère %d en %d coups\n", result, cpt);
                }
                
                else if (diff < 10)
                {
                    printf("Tu chauffes");
                }
                else if (diff < 25)
                {
                    printf("Tu tiédis");
                }
                else if (diff < 50)
                {
                    printf("Tu refroidis");
                }
                else
                {
                    printf("Tu gèles");
                }

                printf(" mais c'est plus\n\n");
            }
            
        }
        else 
        {
        
        printf("Il faut entrer un nombre entre 0 et %d!", nb_max);
        scanf("%d", &result);
        cpt++;
        }

    
    }while(result != nb_myst); 


}
