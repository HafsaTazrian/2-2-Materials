//euler
#include <iostream>
using namespace std;

float func(float x, float y)
{
	return ((y - x )/( y + x));
}


void euler(float x0, float y, float h, float x)
{
	int n = 1;
	cout<<"At iteration: "<<n;
		cout<<"\nx0 ="<<x0<<" y ="<<y;
	float temp = -0;
	while (x0 < x) {
		temp = y;
		y = y + h * func(x0, y);
		x0 = x0 + h;
		n++;
		cout<<"\nAt iteration: "<<n;
		cout<<"\nx0 ="<<x0<<" y ="<<y;
	}

	cout << "Approximate solution at x = "
		<< x << " is " << y << endl;
}


int main()
{
	
	float x0 ;
	float y0 ;
	float h ;
	float x;
	int n;

	cout<<"Enter x0: "<<endl;
	cin>>x0;
	cout<<"\nEnter y0: "<<endl;
	cin>>y0;
	cout<<"\nEnter n: "<<endl;
	cin>>n;
	cout<<"\nEnter x: "<<endl;
	cin>>x;

	h = (x-x0)/n;

	euler(x0, y0, h, x);
	return 0;
}
