//Bisection Method
#include<iostream>
#include <math.h>
using namespace std;

float f(float x)
{
    return (x*x-4*x-10);

}

void BS(float a,float b)
{

    if(f(a)*f(b)>=0)
    {
        cout<<"No Solution!";
    }
    else{

            int i=0;
            float x0;
            while(abs((b-a)/(float)(1.0*b))>=0.0001)
            {

                x0 = (a+b)/2.0;
                i++;
                if(f(x0)==0)
                {
                   // cout<<"Root: "<<x0<<"\n"<<"Iteration: "<<i<<endl;
                    break;
                }
                else if(f(x0)*f(a)<0)
                {
                    b=x0;
                }
                else if(f(x0)*f(b)<0){
                    a=x0;
                }
                cout<<"iteration: "<<i <<"a= "<<a<<"b="<<b<<endl;
            }
            cout<<"Root: "<<x0<<"\n"<<"Iteration: "<<i<<endl;
    }

}

int main()
{

    float a,b;
    cout<<"Enter range:\n";
    cout<<"a=";
    cin>>a;
    cout<<"b=";
    cin>>b;
    BS(a,b);

    return 0;
}
