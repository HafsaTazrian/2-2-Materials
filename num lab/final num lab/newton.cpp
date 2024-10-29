//newton
#include<iostream>
#include<vector>
using namespace std;
#define error .0001
int a,b,c;
int powe=0;
double f_(double x)
{
    return 2*a*x+b;
}
double f(double x)
{
    return a*x*x+b*x+c;
}
void newton_raphson(double x1)
{
    double x2;
    int step=1;
    while(1)
    {
        x2=x1-(f(x1)/f_(x1));
        if(abs(x2-x1)<=error)
        break;
        x1=x2;
        cout<<"iteration: "<<step<<"\nvalues: x2="<<x2<<endl;
        step++;

    }
    cout<<"Newton Raphson Method\n";
    cout<<"step "<<step<<' '<<"root "<<x2<<'\n';
}

int main()
{   string s="x*x-5*x+4";

int n=s.size();
    for(int i=0;i<n;i++)
    {
        if(s[i]=='+' or s[i]=='-')
        break;
        else if(s[i]=='x')
        powe++;
    }
  //  cout<<powe<<'\n';
   bool ok=0;
    int xpos,xpos2,xpos3;
    for(int i=0;i<n;i++)
    {
        if(s[i]=='x' and s[i+1]=='*')
        {
            xpos=i;ok=1;
        }
        if(s[i]=='x' and ok==1)
        {
            xpos2=i-1;
        }
    }
    for(int i=n-1;i>=0;i--)
    {
        if(s[i]=='+' or s[i]=='-')
        {xpos3=i;break;}
    }
    //cout<<xpos<<' '<<xpos2<<' '<<xpos3<<'\n';
    int ax=0,bx=0,cx=0;
    for(int i=0;i<n;i++)
    {
        if(xpos<i)
        {
            int d=s[i]-'0';
            ax+=d;
            ax*=10;
        }
        if(i>xpos+3 and i<xpos2)
        {
            int d=s[i]-'0';
            bx+=d;
            bx*=10;
        }
        if(i>xpos3)
        {
            int d=s[i]-'0';
            cx+=d;
            //cx*=10;
        }
    }
    if(xpos==0)
    {
        a=1;
    }
    else
    {
        a=ax;
    }
    b=bx/10;
    c=cx;
    if(s[xpos+3]=='-')
    b=-b;
    if(s[xpos3]=='-')
    c=-c;
    //cout<<a<<' '<<b<<' '<<c<<'\n';

    double x1;
    cin>>x1;

    newton_raphson(x1);

}
