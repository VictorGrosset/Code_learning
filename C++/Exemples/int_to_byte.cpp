#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    int nb_conv, nb_bit;
    int res_pow, puiss;
    cin >> nb_conv ;
    
    
    for(int puiss = 0; puiss < 15; puiss++)
    {
        int res_bin = pow(2, puiss);
        
        if(res_bin > nb_conv)
        {
            nb_bit = puiss;
            puiss = 16;
        }
    }
    int bin[nb_bit] = {};
    
    int dividende = nb_bit, diviseur = 2 ,quotient, reste;
    
    //
    while(quotient != 0)
    {
        for(int i = nb_bit; i > 0; i--)
        {
            bin[i] = dividende % diviseur;
            dividende = dividende / diviseur;
            
        }
        
        
    }
    for(int i = 0; i < nb_bit; i++)
    {
        cout << bin[i];
    }
    

    return 0;
}
