#include <stdio.h>

void euler();

int main(void)
{
euler();

return 0;
}


void euler()
{
double i,x,a,cpt;

cpt=10000000.0;
a=1.0;

for(i=2.0;i<cpt;i++)
{
	a=a+1/(i*i);
}

a=a*6.0;
x=1.0;
cpt=10.0;

while((x*x) < a)
{
x=x+1;
}

if((x*x) != a)
{
	x=x-1.0;
	
	for(i=1.0; i<cpt;i++)
	{
		 x=0.5*(x+a/x);
	}
}

printf("\nvaleur de PI= %f\n", x);

}

