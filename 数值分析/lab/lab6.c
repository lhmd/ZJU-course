#include <stdio.h>

#define MAX_N 10




void Cubic_Spline(int n, double x[], double f[], int Type, double s0, double sn, double a[], double b[], double c[], double d[]);

double S( double t, double Fmax, int n, double x[], double a[], double b[], double c[], double d[] );

int main()
{
    int n, Type, m, i;
    double x[MAX_N], f[MAX_N], a[MAX_N], b[MAX_N], c[MAX_N], d[MAX_N];
    double s0, sn, Fmax, t0, tm, h, t;

    scanf("%d", &n);
    for (i=0; i<=n; i++) 
        scanf("%lf", &x[i]);
    for (i=0; i<=n; i++) 
        scanf("%lf", &f[i]);
    scanf("%d %lf %lf %lf", &Type, &s0, &sn, &Fmax);

    Cubic_Spline(n, x, f, Type, s0, sn, a, b, c, d);
    for (i=1; i<=n; i++)
        printf("%12.8e %12.8e %12.8e %12.8e \n", a[i], b[i], c[i], d[i]);

    scanf("%lf %lf %d", &t0, &tm, &m);
    h = (tm-t0)/(double)m;
    for (i=0; i<=m; i++) {
        t = t0+h*(double)i;
        printf("f(%12.8e) = %12.8e\n", t, S(t, Fmax, n, x, a, b, c, d));
    }

    return 0;
}

/* Your functions will be put here */
double h[MAX_N], l[MAX_N], u[MAX_N], z[MAX_N], alfa[MAX_N];
void init(int n, double x[], double f[], int Type, double s0, double sn, double a[], double b[], double c[], double d[]) {
	int i = 0;
	for(i = 0; i < n + 1; i++) a[i + 1] = f[i];
	for(i = 0; i < n; i++) h[i] = x[i + 1] - x[i];
}

void Clamped(int n, double x[], double f[], int Type, double s0, double sn, double a[], double b[], double c[], double d[]) {
	int i = 0;
	init(n, x, f, Type, s0, sn, a, b, c, d);
	alfa[0] = 3 * (f[1] - f[0]) / h[0] - 3 * s0;
    alfa[n] = 3 * sn - 3 * (f[n] - f[n - 1]) / h[n - 1];
	for(i = 1; i < n; i++) alfa[i] = 3 / h[i] * (a[i+2] - a[i+1]) - 3 / h[i-1] * (a[i+1] - a[i]);
	l[0] = 2 * h[0];
	u[0] = 0.5;
	z[0] = alfa[0] / l[0];
	for(i = 1; i < n; i++) {
		l[i] = 2 * (x[i+1] - x[i-1]) - h[i-1] * u[i-1];
		u[i] = h[i] / l[i];
		z[i] = (alfa[i] - h[i-1] * z[i-1]) / l[i];
	}
	l[n] = h[n-1] * (2 - u[n-1]);
    z[n] = (alfa[n] - h[n - 1] * z[n - 1]) / l[n];
    c[n+1] = z[n];
    for(i = n-1; i >= 0; i--) {
    	c[i+1] = z[i] - u[i] * c[i+2];
    	b[i+1] = (a[i+2] - a[i+1]) / h[i] - h[i] * (c[i + 2] + 2 * c[i+1]) / 3;
        d[i+1] = (c[i+2] - c[i+1]) / (3 * h[i]);
	}
}

void Natural(int n, double x[], double f[], int Type, double s0, double sn, double a[], double b[], double c[], double d[]) {
	int i = 0;
	init(n, x, f, Type, s0, sn, a, b, c, d);
	for(i = 1; i < n; i++) alfa[i] = 3 / h[i] * (a[i+2] - a[i+1]) - 3 / h[i-1] * (a[i+1] - a[i]);
	l[0] = 1;
	u[0] = 0;
	z[0] = s0/2;
	for(i = 1; i < n; i++) {
		l[i] = 2 * (x[i+1] - x[i-1]) - h[i-1] * u[i-1];
		u[i] = h[i] / l[i];
		z[i] = (alfa[i] - h[i-1] * z[i-1]) / l[i];
	}
	l[n] = 1;
    z[n] = sn/2;
    c[n+1] = sn/2;
    for(i = n-1; i >= 0; i--) {
    	c[i+1] = z[i] - u[i] * c[i+2];
    	b[i+1] = (a[i+2] - a[i+1]) / h[i] - h[i] * (c[i + 2] + 2 * c[i+1]) / 3;
        d[i+1] = (c[i+2] - c[i+1]) / (3 * h[i]);
	}
}

void Cubic_Spline(int n, double x[], double f[], int Type, double s0, double sn, double a[], double b[], double c[], double d[]) {
	if(Type == 1) {
		Clamped(n, x, f, Type, s0, sn, a, b, c, d);
	} else {
		Natural(n, x, f, Type, s0, sn, a, b, c, d);
	}
}

double S( double t, double Fmax, int n, double x[], double a[], double b[], double c[], double d[] ) {
	int i = 0;
    if (x[0] > t || x[n] < t) return Fmax;
    if (t == x[0]) i = 1;
    while (t > x[i]) i++;
    return a[i] + b[i] * (t - x[i - 1]) + c[i] * (t - x[i - 1]) * (t - x[i - 1]) + d[i] * (t - x[i - 1]) * (t - x[i - 1]) * (t - x[i - 1]);
}

