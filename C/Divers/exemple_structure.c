#include<stdio.h>
#include<string.h>

struct Personne
{
    char nom[100];
    char prenom[100];
    char adresse[1000];
    
    int age;
    int genre; // Booléen : 1 = garçon, 0 = fille
};


int main(int argc, char *argv[])
{
    struct Personne utilisateur; // Création d'une variable "utilisateur"

    utilisateur.age = 10;
    
    printf("Quel est votre nom ? ");
    scanf("%s", utilisateur.nom);
    printf("Votre prenom ? ");
    scanf("%s", utilisateur.prenom);   

    strcpy(utilisateur.adresse , "Toulouse");

    printf("adresse = %s\n", utilisateur.adresse);

    return 0;
}
