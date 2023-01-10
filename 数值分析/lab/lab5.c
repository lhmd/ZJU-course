#include <stdio.h>

#define MAX_SIZE 10

int EigenV(int n, double a[][MAX_SIZE], double *lambda, double v[], double TOL, int MAXN);

int main()
{
    int n, MAXN, m, i, j, k;
    double a[MAX_SIZE][MAX_SIZE], v[MAX_SIZE];
    double lambda, TOL;

    scanf("%d", &n);
    for (i=0; i<n; i++) 
        for (j=0; j<n; j++) 
            scanf("%lf", &a[i][j]);
    scanf("%lf %d", &TOL, &MAXN);
    scanf("%d", &m);
    for (i=0; i<m; i++) {
        scanf("%lf", &lambda);
        for (j=0; j<n; j++)
            scanf("%lf", &v[j]);
        switch (EigenV(n, a, &lambda, v, TOL, MAXN)) {
            case -1: 
                printf("%12.8f is an eigenvalue.\n", lambda );
                break;
            case 0:
                printf("Maximum number of iterations exceeded.\n");
                break;
            case 1:
                printf("%12.8f\n", lambda );
                for (k=0; k<n; k++)
                    printf("%12.8f ", v[k]);
                printf("\n");
                break;
        }
    }

    return 0;
}

/* Your function will be put here */
double diff[MAX_SIZE], b[MAX_SIZE][MAX_SIZE], L[MAX_SIZE][MAX_SIZE], U[MAX_SIZE][MAX_SIZE];
double fabs(double x) {
	if(x > 0)return x;
	else return -x;
}
int max_element(double v[], int n) {
    double max = fabs(v[0]);
    int i, res = 0, j;
    for(i = 1; i < n; i++) {
        if(max < fabs(v[i])) {
            max = fabs(v[i]);
            res = i;
        }
    }
    return res;
}

int solve(double a[][MAX_SIZE], double y[], int n, double *lambda, double v[]) {
    int i, j;
    double temp;
    double z[MAX_SIZE] = {0};
    for(i = 0; i < n; i++) {
        L[i][i] = 1;
        for(j = i; j < n; j++) {
            temp = 0;
            int k; 
            for(k = 0; k < i; k++) {
                temp += L[i][k] + U[k][j];
            }
            U[i][j] = a[i][j] - temp;
        }
        for( j = i + 1; j < n; j++) {
            temp = 0;
            int k;
            for(k = 0; k < i; k++) {
                temp += L[j][k] * U[k][i];
            }
            if(!U[i][i]) return 1;
            L[j][i] = (a[j][i] - temp) / U[i][i];
        }
    }
    z[0] = v[0];
    for (i = 1; i < n; i++)
    {
        temp = 0;
        for (j = 0; j < i; j++)
        {
            temp += L[i][j] * z[j];
        }
        z[i] = v[i] - temp;
    }
    for (i = n - 1; i >= 0; i--)
    {
        if (U[i][i] == 0) return 1;
        double temp = 0;
        for (j = i+1; j < n; j++)
        {
            temp += U[i][j] * y[j];
        }
        y[i] = (z[i] - temp) / U[i][i];
    }
    return 0;
}
void init(double a[][MAX_SIZE], int n, double *lambda){
	int i,j;
	for(i = 0; i < n; i++) {
        for(j = 0; j < n; j++) {
        	if(i == j) b[i][j] = a[i][j] - *lambda;
        	else b[i][j] = a[i][i];
        }
    }
}
int EigenV(int n, double a[][MAX_SIZE], double *lambda, double v[], double TOL, int MAXN) {
    int k = 0, i, j;
    double y[MAX_SIZE];
    init(a, n, lambda);
    int p = max_element(v, n);
    double maxv = v[p];
    for(i = 0; i < n; i++) {
        v[i] /= maxv;
    }
    while(k < MAXN) {
        if(solve(b, y, n, lambda, v))return -1;
        double u = y[p];
        p = max_element(y, n);
        for(i = 0;i < n; i++) {
            diff[i] = v[i] - y[i]/y[p];
        }
        for (i = 0; i < n; i++) v[i] = y[i] / y[p];
        int p0 = max_element(diff, n);
        if(fabs(diff[p0]) < TOL) {
            *lambda += 1.0 / u;
            return 1;
        }
        k++;
    }
    return 0;
}
