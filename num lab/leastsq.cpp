//leastsq

#include <iostream>
#include <vector>
#include <cmath>
using namespace std;

vector<double> polynomialCurveFit(const vector<double>& xData, const vector<double>& yData, int degree) {
    int n = xData.size();
    vector<vector<double> > A(degree + 1, vector<double>(degree + 1, 0.0));
    vector<double> B(degree + 1, 0.0);
    vector<double> coefficients(degree + 1, 0.0);

    for (int i = 0; i < n; i++) {
        double x = xData[i];
        double y = yData[i];
        for (int j = 0; j <= degree; j++) {
            for (int k = 0; k <= degree; k++) {
                A[j][k] += pow(x, j + k);
            }
            B[j] += pow(x, j) * y;
        }
    }

    for (int i = 0; i <= degree; i++) {
        for (int j = i + 1; j <= degree; j++) {
            double factor = A[j][i] / A[i][i];
            for (int k = i; k <= degree; k++) {
                A[j][k] -= factor * A[i][k];
            }
            B[j] -= factor * B[i];
        }
    }

    for (int i = degree; i >= 0; i--) {
        coefficients[i] = B[i];
        for (int j = i + 1; j <= degree; j++) {
            coefficients[i] -= A[i][j] * coefficients[j];
        }
        coefficients[i] /= A[i][i];
    }

    return coefficients;
}

int main() {
    int numDataPairs;
    cout << "Enter the number of data pairs: ";
    cin >> numDataPairs;
    cout<<endl;

    vector<double> xData(numDataPairs);
    vector<double> yData(numDataPairs);

    for (int i = 0; i < numDataPairs; i++) {
        cout<<"For pair"<<i+1<<endl;
        cout << "x: ";
        cin >> xData[i];
        cout << "y: ";
        cin >> yData[i];
    }
    cout<<endl;

    int degree; 
    cout << "Enter the degree of the polynomial: ";
    cin >> degree;

    cout<<endl;

    vector<double> coefficients = polynomialCurveFit(xData, yData, degree);

    for (int i = 0; i <= degree; i++) {
        cout << "Coefficient " << i << ": " << coefficients[i] << endl;
    }
    cout<<endl;
    return 0;
}