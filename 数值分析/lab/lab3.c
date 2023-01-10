#include <stdio.h>

#define Max_size 10000 /* max number of dishes */
void Price( int n, double p[] );
double p1[Max_size],a[Max_size],b[Max_size],u[Max_size],z[Max_size],l[Max_size][2];
int main() {
	int n, i;
	double p[Max_size];

	scanf("%d", &n);
	for (i=0; i<n; i++)
		scanf("%lf", &p[i]);
	Price(n, p);
	for (i=0; i<n; i++)
		printf("%.2f ", p[i]);
	printf("\n");

	return 0;
}

/* Your function will be put here */
//xi=ai+bi*xn
void crout(int n,double p[],double x[]){
	n--;
	l[0][1]=2;
	u[0]=0.5/l[0][1];
	z[0]=p[0]/l[0][1];
	int i;
	for(i=1;i<n-1;i++){
		l[i][0]=0.5;
		l[i][1]=2-l[i][0]*u[i-1];
		u[i]=0.5/l[i][1];
		z[i]=(p[i]-l[i][0]*z[i-1])/l[i][1];
	}
	l[n-1][0]=0.5;
	l[n-1][1]=2-l[n-1][0]*u[n-2];
	z[n-1]=(p[n-1]-l[n-1][0]*z[n-2])/l[n-1][1];
	x[n-1]=z[n-1];
	for(i=n-2;i>=0;i--){
		x[i]=z[i]-u[i]*x[i+1];
	}
}
void Price( int n, double p[] ) {
	int i;
	p1[0]=-0.5;
	p1[n-2]=-0.5;
	crout(n,p,a);
	crout(n,p1,b);
	p[n-1]=(p[n-1]-0.5*a[0]-0.5*a[n-2])/(2+0.5*b[0]+0.5*b[n-2]);
	for(i=0;i<n-1;i++){
		p[i]=a[i]+b[i]*p[n-1];
	} 
}
