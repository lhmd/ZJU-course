#include <stdio.h>
#include <math.h>

#define MAX_SIZE 10
#define bound pow(2, 127)
#define ZERO 1e-9 /* X is considered to be 0 if |X|<ZERO */

enum bool { false = 0, true = 1 };
#define bool enum bool

int Jacobi( int n, double a[][MAX_SIZE], double b[], double x[], double TOL, int MAXN );

int Gauss_Seidel( int n, double a[][MAX_SIZE], double b[], double x[], double TOL, int MAXN );

int main() {
	int n, MAXN, i, j, k;
	double a[MAX_SIZE][MAX_SIZE], b[MAX_SIZE], x[MAX_SIZE];
	double TOL;

	scanf("%d", &n);
	for (i=0; i<n; i++) {
		for (j=0; j<n; j++)
			scanf("%lf", &a[i][j]);
		scanf("%lf", &b[i]);
	}
	scanf("%lf %d", &TOL, &MAXN);

	printf("Result of Jacobi method:\n");
	for ( i=0; i<n; i++ )
		x[i] = 0.0;
	k = Jacobi( n, a, b, x, TOL, MAXN );
	switch ( k ) {
		case -2:
			printf("No convergence.\n");
			break;
		case -1:
			printf("Matrix has a zero column.  No unique solution exists.\n");
			break;
		case 0:
			printf("Maximum number of iterations exceeded.\n");
			break;
		default:
			printf("no_iteration = %d\n", k);
			for ( j=0; j<n; j++ )
				printf("%.8f\n", x[j]);
			break;
	}
	printf("Result of Gauss-Seidel method:\n");
	for ( i=0; i<n; i++ )
		x[i] = 0.0;
	k = Gauss_Seidel( n, a, b, x, TOL, MAXN );
	switch ( k ) {
		case -2:
			printf("No convergence.\n");
			break;
		case -1:
			printf("Matrix has a zero column.  No unique solution exists.\n");
			break;
		case 0:
			printf("Maximum number of iterations exceeded.\n");
			break;
		default:
			printf("no_iteration = %d\n", k);
			for ( j=0; j<n; j++ )
				printf("%.8f\n", x[j]);
			break;
	}

	return 0;
}

/* Your function will be put here */
int init(double a[][MAX_SIZE], double b[], int n) {
	int i,j;
	double temp;
	for (i=0; i<n; i++) {
		double max = fabs(a[i][i]);
		int idx=i;
		for (j=i; j<n; j++) {
			double now = fabs(a[j][i]);
			if (now > max) {
				max = now;
				idx = j;
			}
		}
		if (max) {
			for (j=0; j<n; j++) {
				temp = a[i][j];
				a[i][j] = a[idx][j];
				a[idx][j] = temp;
			}
			temp = b[i];
			b[i] = b[idx];
			b[idx] = temp;
		} else {
			for (j=0; j<i; j++) {
				double now = fabs(a[j][i]);
				if(now > max) {
					max = now;
					idx = j;
				}
			}
			if (max==0)return -1;
			for (j=0; j<n; j++) {
				a[i][j] -= a[idx][j];
			}
			b[i] += b[idx];
		}
	}
}
int Jacobi(int n, double a[][MAX_SIZE], double b[], double x[], double TOL, int MAXN ) {
	if(init(a, b, n) == -1)return -1;
	int k = 0,i,j;
	double p[MAX_SIZE],temp;
	for (k=0; k<MAXN; k++) {
		for (i=0; i<n ; i++) {
			temp=0;
			for(j=0; j<n; j++) {
				if(j==i)continue;
				temp += x[j]*a[i][j];
			}
			p[i] =  -temp + b[i];
			p[i] /= a[i][i];
		}
		temp = fabs(p[0]-x[0]);
		for (i=0; i<n; i++) {
			if(fabs(p[i]-x[i])>temp)temp=fabs(p[i]-x[i]);
			if(fabs(x[i])>bound)return -2;
			x[i]=p[i];
		}
		if(temp < TOL)return k+1;
	}
	return 0;
}

int Gauss_Seidel( int n, double a[][MAX_SIZE], double b[], double x[], double TOL, int MAXN ) {
	if(init(a, b, n) == -1)return -1;
	int k = 0,i,j;
	double p[MAX_SIZE],temp;
	for (k=0; k<MAXN; k++) {
		for (i=0; i<n ; i++) {
			temp=0;
			for(j=0; j<i; j++) {
				temp -= p[j]*a[i][j];
			}
			for(j=i+1; j<n; j++) {
				temp -= x[j]*a[i][j];
			}
			p[i] =  temp + b[i];
			p[i] /= a[i][i];
		}
		temp = fabs(p[0]-x[0]);
		for (i=0; i<n; i++) {
			if(fabs(p[i]-x[i])>temp)temp=fabs(p[i]-x[i]);
			if(fabs(p[i])>bound)return -2;
			x[i]=p[i];
		}
		if(temp < TOL)return k+1;
	}
	return 0;
}
