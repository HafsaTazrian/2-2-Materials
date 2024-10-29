//

#include<iostream>
#include<string>
#include<vector>
#include<sstream>
#include<algorithm>
#include<cmath>
#include<set>
#include<map>
#include<unordered_map>
#include<unordered_set>
using namespace std;
vector<string> tokenSize(const string& eqn, char deli) 
{
    vector<string> tokens;
    stringstream ss(eqn);
    string token;
    while (getline(ss, token, deli)) 
    {
        tokens.push_back(token);
    }
    return tokens;
}

void lu(const vector<vector<int> >& A, vector<vector<double> >& L, vector<vector<double> >& U) 
{
    int n = A.size();
    L = vector<vector<double> >(n, vector<double>(n, 0.0));
    U = vector<vector<double> >(n, vector<double>(n, 0.0));

    for (int i = 0;i<n;i++) 
    {
        L[i][i] =1.0;
        for (int j = i;j<n;j++) 
        {
            double sum=0.0;
            for (int k=0;k<i;k++) 
            {
                sum += L[i][k]*U[k][j];
            }
            U[i][j] = A[i][j]-sum;
        }
     
        for (int j=i+1;j<n;j++) 
        {
            double sum =0.0;
            for (int k=0;k<i;k++) 
            {
                sum += L[j][k]*U[k][i];
            }
            L[j][i] = ((A[j][i]-sum)/U[i][i]);
        }
         
    }
    cout<<"\nMatrix L is:"<<endl;

    for (int i=0;i<n;i++) 
    {
        for (int j=0;j<n;j++) 
            {
                cout<<L[i][j]<<"\t";
            }
            cout << endl;
    }
    cout<<endl;
    cout << "\nMatrix U is:" << endl;
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) 
        {
            cout << U[i][j] << "\t";
        }
        cout << endl;
    }
    cout<<endl;
}


vector<double> solve(const vector<vector<int> >& A, const vector<int>& B) {
    int n = A.size();
    vector<vector<double> > L, U;
    lu(A, L, U);

    
    vector<double> y(n, 0.0);
    for (int i = 0; i < n; i++) {
        double sum = 0.0;
        for (int j = 0; j < i; j++) {
            sum += L[i][j] * y[j];
        }
        y[i] = (B[i] - sum) / L[i][i];
    }

    vector<double> x(n, 0.0);
    for (int i = n - 1; i >= 0; i--) {
        double sum = 0.0;
        for (int j = i + 1; j < n; j++) {
            sum += U[i][j] * x[j];
        }
        x[i] = (y[i] - sum) / U[i][i];
    }
    return x;
}

int main()
{
    vector<string> eqns;
    eqns.push_back("2x + 3y + z + w = 9");
    eqns.push_back("x + 2y + 3z + 4w = 6");
    eqns.push_back("3x + y + 2z = 8");
    eqns.push_back("y + w = 5");

    int n = eqns.size();
    vector<vector<int> > A(n, vector<int>(n, 0));
    vector<int> B(n, 0);
    map<string, int> varPos;
    varPos["x"] = 0;
    varPos["y"] = 1;
    varPos["z"] = 2;
    varPos["w"] = 3;

    for (int i = 0; i < n; i++) 
    {
        vector<string> tokens = tokenSize(eqns[i], ' ');
        int m = tokens.size();
        for (int j = 0; j < m - 2; j++) 
        {
            string token = tokens[j];
            int coeff = 1;
            if (token.find("x")!=string::npos||token.find("y")!=string::npos||token.find("z")!=string::npos||token.find("w")!=string::npos) 
            {
                string variable=token.substr(token.size() - 1, 1);
                coeff=(token[0] =='-') ? -1 : 1;
                if (token[0] =='-'|| token[0] =='+') 
                {
                    token =token.substr(1);
                }
                if (token.size()>1) 
                {
                    coeff *=stoi(token.substr(0,token.size()-1));
                }
                A[i][varPos[variable]]=coeff;
            }
        }
        B[i] =stoi(tokens[m - 1]);
    }
    vector<double> soln=solve(A, B);
    cout<<"The value of x, y, z, w:" << endl;
    cout<<"x = "<<soln[0]<<endl<<"y = "<<soln[1]<<endl<<"z = "<<soln[2]<<endl<<"w = "<<soln[3]<<endl;
    return 0;
}

/*

2x + 3y + z + w = 9

x + 2y + 3z + 4w = 6

3x + y + 2z = 8

y + w = 5

*/