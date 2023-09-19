#include <stdio.h>
#include <stdlib.h>
#include <math.h>


#define WIDTH 200
#define HEIGHT 100
#define X (WIDTH/2)
#define Y (HEIGHT/2)
#define XMAX WIDTH-X-1
#define XMIN -(WIDTH-X)
#define YMAX HEIGHT-Y
#define YMIN -(HEIGHT-Y)+1

char grid[HEIGHT][WIDTH];

int plot(int x, int y);
void init_grid(void);
void show_grid(void);

//Char plotter
int plot(int x, int y)
{
    if(x > XMAX || x < XMIN || y > YMAX || y < YMIN)
      return(-1);
    
    grid[Y-y][X-x] = '*';
    return(1);
}
//End char plotter


//Solver
void 
root(float a, float b, float c, double* r1, double* r2)
{
  double delta;
  delta = 0;
  delta = sqrt((b*b)-(4*a*c));
  printf("\n_%.2lf_\n", delta);


   if(delta >0)
    {
      *r1 = (-b-delta)/(2*a); //stocke la valeur dans l'adresse des pointeurs
      *r2 = (-b+delta)/(2*a); // r1 et r2
    }
  else if(delta==0)
	{
	    *r1 = (-b)/(2*a);
	}
   else
	{
	}
}
//End Solver


//Data processing
int
data(float a, float b, float c, double r1, double r2, double step, double liminf, double limsup)
{
  double x, y;

  init_grid();
  for (x=liminf; x<=limsup; x+=step)
  {
    y = (a*(x*x))+(b*x)+(c);
    printf("%.3lf -- %.3lf\n",x ,y);
    plot(printf(x),printf(y));
  }
  show_grid();
  return(0);
}
//End Data processing


//Grid initializer
void init_grid(void)
{
    int x,y;

    for(y=0;y<HEIGHT;y++)
      for(x=0;x<WIDTH;x++)
        grid[y][x] = ' ';
    /* draw the axis */
    for(y=0;y<HEIGHT;y++)
        grid[y][X] = '|';
    for(x=0;x<WIDTH;x++)
        grid[Y][x] = '-';
    grid[Y][X] = '+';
}


//Grid
void 
show_grid(void)
{
  int x,y;

  for(y=0;y<HEIGHT;y++)
  {
    for(x=0;x<WIDTH;x++)
      putchar(grid[y][x]);
    putchar('\n');
  }
}
//Grid


int 
main()
{
  float a, b, c;
  double r1, r2, liminf, limsup;
  double step, resolution;

  r1=0;
  r2=0;

  puts("Entrez les 3 coefficients et la precision du calcul");
  scanf ("%f %f %f %lf", &a, &b, &c, &resolution);
  root(a, b, c, &r1, &r2);
  
 

  liminf=r1-10;  //Compute intervall display
  limsup=r2+10;
  step = (((fabs(r1)+r2))/(resolution));
  printf("\n%f    %f    %f", a, b, c);
  printf("\n%lf    %lf", r1, r2);
  printf("\n%lf    %lf   %lf\n\n", liminf, limsup, step);

  data(a, b, c, r1, r2, step, liminf, limsup);
}
