#include<iostream>
using namespace std;

  int main ()
  {
	int U,n,q,Un,choice,result; 
  
    system("clear");
  	cout<< "Entrez la première valeur de la suite :" <<endl;
  	cin>> U; //L'utilisateur donne une valeur à u1
    cout<< "Entrez le nombre de pas à effectuer :" <<endl;
    cin>> n; //L'utilisateur donne une valeur à n
    cout<< "Entrez la valeur de la raison :" <<endl;
    cin>> q; //L'utilisateur donne une valeur à q
      
	
  
      	cout<< "Terme ou somme ?" <<endl;
		    cout<< "1: R=1+(n-1)*q" <<endl;
		    cout<< "2: R=((u1+un)/2)*n" <<endl;


        cin>> choice;
	
    		switch (choice)
    		{
    		case 1:
            result=U+(n-1)*q;
            cout<< "Le résultat est :" << result <<endl;
            break;

    		case 2:           
            Un=U+(n-1)*q;
            cout << "le n(ième) terme = à " << Un << endl;
            result=((U+Un)/2)*n;
            cout << "la somme de tous les termes est égal à " << result << endl;
            break;
			}      
	return (0);
		
}
