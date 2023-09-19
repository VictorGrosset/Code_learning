#include<iostream>

using namespace std;


saisie_string(string, string, string, string)
saisie_num(int)
void affichage(string, string, string, int, string)

int main (void)
{
string nom, prenom, adresse, email;
int telephone;

saisie_string(nom, prenom, adresse, email);
saisie_num(telephone);
affichage(nom, prenom, adresse, telephone, email);

int telephone;

cout<<"entrez votre nom"<<endl;
cin>>nom;
cout<<" "<< i <<endl;
cout<<"le double est"<< i*2;

return 0;
}



void saisie_string(nom, prenom, adresse, email)
{
cin >> nom;
cin >> prenom;
cin >> adresse;
cin >> email;
}

void saisie_num(telephone)
{
cin >> telephone;
}



void affichage(nom, prenom, adresse, telephone, email)
{
cout << nom << endl << prenom << endl << adresse << endl << telephone << endl << mail << endl;
}