#include <stdlib.h>
#include <stdio.h>

float Calcul_PI(); //prototype de fonction

int main()
{
  Calcul_PI();
	return 0;
}


float Calcul_PI()
{
float i, x , a, cpt;
 
cpt = 10000000.0;
a = 1.0;
 
	for (i=1; i<=cpt; i++)
		{
     a=a+1/(i*i);
		}
  //printf("a=%f\n", a); 
	a=a*6;
	x=1.0;
	cpt=10.0;
  //printf("a=%f\n", a);
	
	while ((x*x)<a)
	{
	x++;
	}
	//printf("a=%f\n", x);
	if ((x*x) != a)
	{
	x=x-1;
 //printf("a=%f\n", x);
		for (i=1; i<=cpt; i++)
		{
     x=0.5*(x+(a/x));
     printf("a=%f\n", x);
		}
	}

printf("la valeur de PI est %f\n", x); //sortie

return 0;
}
