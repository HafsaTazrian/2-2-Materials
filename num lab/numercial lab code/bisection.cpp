#include<iostream>
#include <math.h>
using namespace std;

float f(float x)
{
    return ((x*x*x*x*x) - 3*(x*x*x) + 5);

}

void Bisection(float a,float b)
{

    if(f(a)*f(b)>=0)
    {
        cout<<"No Solution";
    }
    else{

            
            float c;
            while(abs((b-a)/(float)(1.0*b))>=0.0001)
            {

                c = (a+b)/2.0;
                
                if(f(c)==0)
                {
                   
                    break;
                }
                else if(f(c)*f(a)<0)
                {
                    b=c;
                }
                else if(f(c)*f(b)<0){
                    a=c;
                }
            }
            cout<<"Root: "<<c<<"\n";
    }

}

int main()
{

    float a,b;
    float x,y;
    cout<<"Enter range:\n";
    cout<<"a=";
    cin>>a;
    cout<<"b=";
    cin>>b;

    for (int i = a; i < b; i++){
        if (f(i)*f(i+1) < 0){
            cout<<"innitial guesses: "<<i<<" "<<i+1<<endl;
            x = i;
            y = i+1;
        }
    }
    Bisection(x,y);

    return 0;
}