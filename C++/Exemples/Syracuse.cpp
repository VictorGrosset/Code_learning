#include <iostream>
using namespace std;

int Ns = 0, i = 1;
int count =  0;

int main()
{
cin >> Ns;

for (i; i < 1000; i++)
{   

    while (Ns != 1)
    {
        count = count + 1;
        if(Ns%2 == 0)
        {
        Ns = Ns /2;
        cout << Ns << endl ;
        }
        else
        {
        Ns = Ns * 3 + 1;
        cout << Ns << endl ;
        }

        if(Ns == 1)
        {
            i = 1001;
        }
    }

}
cout << endl << count << endl;
return 0;
}