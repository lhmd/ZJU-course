#include <stdio.h>
#include <math.h>

#define MAX_m 200
#define MAX_n 5

double f1(double x)
{
    return sin(x);
}

double f2(double x)
{
    return exp(x);
}

int OPA( double (*f)(double t), int m, double x[], double w[], double c[], double *eps );

void print_results( int n, double c[], double eps)
{    
    int i;

    printf("%d\n", n);
    for (i=0; i<=n; i++)
        printf("%12.4e ", c[i]);
    printf("\n");
    printf("error = %9.2e\n", eps);
    printf("\n");
}

int main()
{
    int m, i, n;
    double x[MAX_m], w[MAX_m], c[MAX_n+1], eps;

    m = 90;
    for (i=0; i<m; i++) {
        x[i] = 3.1415926535897932 * (double)(i+1) / 180.0;
        w[i] = 1.0;
    }
    eps = 0.001;
    n = OPA(f1, m, x, w, c, &eps);
    print_results(n, c, eps);

    m = 200;
    for (i=0; i<m; i++) {
        x[i] = 0.01*(double)i;
        w[i] = 1.0;
    }
    eps = 0.001;
    n = OPA(f2, m, x, w, c, &eps);
    print_results(n, c, eps);

    return 0;
}

/* Your function will be put here */
double innerProduct(double f[], double g[], double x[], double y[], double w[], int m) {
    double res = 0;
    int i, j;
    for (i = 0; i < m; i++) {   
        double sum1 = 0 ,sum2 = 0;
        for (j = 0; j <= MAX_n; j++) {
            sum1 +=  f[j] * pow(x[i], j);
            sum2 +=  g[j] * pow(x[i], j);
        }   
        res += w[i] * sum1 * sum2;
    }
    return res;
}

double innerProductY(double f[], double g[], double x[], double y[], double w[], int m) {
    double res = 0;
    int i, j;
    for (i = 0; i < m; i++) {   
        double sum1 = 0 ,sum2 = 0;
        for (j = 0; j <= MAX_n; j++) {
            sum1 +=  f[j] * pow(x[i], j);
        }   
        sum2 = y[i];
        res += w[i] * sum1 * sum2;
    }
    return res;
}

double innerProductYY(double f[], double g[], double x[], double y[], double w[], int m) {
    double res = 0;
    int i, j;
    for (i = 0; i < m; i++) {
        res += w[i] * y[i] * y[i];
    }
    return res;
}

int OPA(double (*f)(double t), int m, double x[], double w[], double c[], double* eps) {
	double fy[MAX_m], fai[3][MAX_n+1] = {1}, y[MAX_n+1] = {0,1}, xfai[0][MAX_n+1] = {0};
	int i, j, k = 0;
	double a0, err, B1, C1;
    for (i = 0; i < m; i++) {
        fy[i] = f(x[i]);
    }
    a0=innerProductY(fai[0], y, x ,fy, w, m) / innerProduct(fai[0], fai[0], x ,fy, w, m);
    for (i = 0; i <= MAX_n; i++) {
        c[i] = fai[0][i] * a0;
    }
    err = innerProductYY(y,y,x ,fy, w, m) - a0 * innerProductY(fai[0], y,x ,fy, w, m );
    for (i = 0; i < MAX_n; i++) xfai[0][i+1] = fai[0][i];
    B1 = innerProduct(xfai[0], fai[0], x ,fy, w, m) / innerProduct(fai[0], fai[0], x ,fy, w, m);
    
    fai[1][0] = -B1;
    fai[1][1] = 1;

    a0 = innerProductY(fai[1],  y, x ,fy, w, m) / innerProduct(fai[1], fai[1], x ,fy, w, m);
    for (i = 0; i <= MAX_n; i++) {
        c[i] += a0 * fai[1][i];
    }
    
    err -= a0 * innerProductY(fai[1], y, x ,fy, w, m);
    while (k++ < MAX_n && fabs(err) >= *eps) {
    	if (fai[1][MAX_n] != 0) break;
        for (i = 0; i < MAX_n; i++) xfai[0][i+1] = fai[1][i];
        B1 = innerProduct(xfai[0], fai[1], x ,fy, w, m) / innerProduct(fai[1], fai[1], x ,fy, w, m);
        C1 = innerProduct(xfai[0], fai[0], x ,fy, w, m) / innerProduct(fai[0], fai[0], x ,fy, w, m);
        fai[2][0] = 0;
        for (i = 0; i < MAX_n; i++) fai[2][i + 1] = fai[1][i];
        for (i = 0; i <= MAX_n; i++) fai[2][i] = fai[2][i] - B1 * fai[1][i] - C1 * fai[0][i];
        a0 =  innerProductY(fai[2], y, x ,fy, w, m)/innerProduct(fai[2], fai[2], x ,fy, w, m);
        for (i = 0; i <= MAX_n; i++) c[i] += a0 * fai[2][i];
        err -= a0 * innerProductY(fai[2], y, x ,fy, w, m);
        for (i = 0; i <= MAX_n; i++) {
            fai[0][i] = fai[1][i];
            fai[1][i] = fai[2][i];
        }    
    }
    *eps = err;
    return k;
}

