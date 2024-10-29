//range kutta and false position


#include<iostream>
#include<iomanip>
#include<math.h>

#define f(x) (x*x)- (2*x) - 24
#define func(x,y) (x + y)
using namespace std;



void RK(){
    float x0, y0, xn, h, yn, k1, k2, k3, k4, k;
    int i, n;

    cout<<"Enter Initial Condition"<< endl;
    cout<<"x0 = ";
    cin>> x0;
    cout<<"y0 = ";
    cin >> y0;
    cout<<"h= ";
    cin>>h;
    cout<<"n= ";
    cin>>n;
    cout<<"xn= ";
    cin>>xn;

    for(i=0; i < n; i++)
    {
        k1 = h * (func(x0, y0));
        k2 = h * (func((x0+h/2), (y0+k1/2)));
        k3 = h * (func((x0+h/2), (y0+k2/2)));
        k4 = h * (func((x0+h), (y0+k3)));
        k = (k1+2*k2+2*k3+k4)/6;
        yn = y0 + k;
        x0 = x0+h;
        y0 = yn;
        }

    cout<<"\nValue of y at x = "<< xn<< " is " << yn<<endl<<endl;
}


void falsePosition() {

    float x1, x2, x0, f1, f2, f0, e;
	 int step = 1;

	 
     cout<< setprecision(6)<< fixed;

	 
	 up:
	 cout<<"Enter first guess: ";
     cin>>x1;
     cout<<"Enter second guess: ";
     cin>>x2;
     cout<<"Enter tolerable error: ";
     cin>>e;

	 f1 = f(x1);
	 f2 = f(x2);
	 if( f2 * f1 > 0.0)
	 {
		  cout<<"Incorrect Initial Guesses."<< endl;
		  goto up;
	 }
   
     cout<< endl;
	 do
	 {
		 
		  x0 = x1 - (x2-x1) * f1/ (f2-f1);
		  f0 = f(x0);

		  if( f0 * f1 < 0)
		  {
			   x2 = x0;
			   f2 = f0;
		  }
		  else
		  {
			   x1 = x0;
			   f1 = f0;
		  }
		  step = step + 1;
	 }
     while(fabs(f0)>e);

	 cout<< endl<<"Root is: "<< x0<< endl;
}


int main()
{
        RK();   
}