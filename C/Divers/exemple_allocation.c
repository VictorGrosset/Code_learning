/*
#include <stdio.h>
#include <stdlib.h>

int main ()
{
float* ptr;

ptr = (float*)calloc(5.0, sizeof(float));

if (ptr == NULL)
	{
	printf("Allocation error");
	exit(0);
	}

else
	{
	*ptr=10.0;
	printf("Memory = %f\n", *ptr);
	free(ptr);
	//printf("Memory = %f\n", *ptr*);
	}
	
return 0;
}
*/


/*
#include <stdio.h>
#include <stdlib.h>

int main ()
{
int* ptr = malloc(sizeof(int) * 10);

  if (ptr == NULL)
    {
    printf("Allocation error");
    return EXIT_FAILURE;
    }
    
  for (unsigned int i=0; i<10; i++)
   {
   ptr[i] = i * 10;
   printf("P[%u] = %d\n", i , ptr[i]);
   } 
   
  free(ptr);
  return 0;
}

*/

#include <stdio.h>
#include <stdlib.h>

int main ()
{
int* ptr = malloc(sizeof(int) * 10);

  if (ptr == NULL)
    {
    printf("Allocation error");
    return EXIT_FAILURE;
    }
    
  for (unsigned int i=0; i < 10 ; i++)
    {
    ptr[i]=i;
    printf("P[%u] = %d\n", i, *ptr);
    }
    
free(ptr);

  ptr = realloc(sizeof(int) * 20);
  
  for ( unsigned int i=0; i < 20; i++ )
    {
    ptr[i]=i;
    printf("\nP[%u] = %d\n", i , *ptr);
    }

free(ptr);

return 0;
}