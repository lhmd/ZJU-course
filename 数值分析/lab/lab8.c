#include <stdio.h>
#include <math.h>

double f0( double x, double l, double t )
{
    return sqrt(1.0+l*l*t*t*cos(t*x)*cos(t*x));
}

double Integral(double a, double b, double (*f)(double x, double y, double z), 
double eps, double l, double t);

int main()
{
    double a=0.0, b, eps=0.005, l, t;

    scanf("%lf %lf %lf", &l, &b, &t);
    printf("%.2f\n", Integral(a, b, f0, eps, l, t));

    return 0;
}

/* Your function will be put here */
#define PAI 3.1415926535
double calR11(int i, double h, double l, double t, double (*f)(double x, double y, double z), double init) {
	int j = 1;
	double res = 0;
	for(j =  1; j <= pow(2,i-2); j++) {
		res += f(init + (j - 0.5) * h, l, t);
	}
	return res;
}
double Integral(double a, double b, double (*f)(double x, double y, double z), double eps, double l, double t) {
	int i = 2;
	double h1 = PAI/t;
	int n = (b - a)/h1;
	double h2 = (b - a) - n*h1;
	double R[2][10005], r[2][10005];
	R[0][1] = h1 / 2 * (f(0, l, t) + f(h1, l, t));
	r[0][1] = h2 / 2 * (f(a + n*h1, l, t) + f(b, l, t));
	while(1) {
		R[1][1] = 1.0 / 2 * (R[0][1] + h1 * calR11(i, h1, l, t, f, 0));
		r[1][1] = 1.0 / 2 * (r[0][1] + h2 * calR11(i, h2, l, t, f, a + n*h1));
		int j;
		for (j = 2; j <= i; j++) {
			double temp = (pow(4, j - 1) - 1);
            R[1][j] = R[1][j - 1] + (R[1][j - 1] - R[0][j - 1]) / temp;
            r[1][j] = r[1][j - 1] + (r[1][j - 1] - r[0][j - 1]) / temp;
        }
        h1 = h1 / 2;
        h2 = h2 / 2;
        if (fabs(R[0][i - 1] * n + r[0][i - 1] - R[1][i] * n - r[1][i]) < eps)
            return (R[1][i] * n + r[1][i]) / 100;
        for (j = 1; j <= i; j++)
        {
            R[0][j] = R[1][j];
            r[0][j] = r[1][j];
        }
		i++;
	}
}

