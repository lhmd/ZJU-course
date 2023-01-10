#include <stdio.h>
#include <math.h>

#define ZERO 1e-13 /* X is considered to be 0 if |X|<ZERO */
#define MAXN 11    /* Max Polynomial Degree + 1 */

double Polynomial_Root(int n, double c[], double a, double b, double EPS);

int main()
{
    int n;
    double c[MAXN], a, b;
    double EPS = 0.00005;
    int i;

    scanf("%d", &n);
    for (i=n; i>=0; i--) 
        scanf("%lf", &c[i]);
    scanf("%lf %lf", &a, &b);
    printf("%.4f\n", Polynomial_Root(n, c, a, b, EPS));

    return 0;
}

/* Your function will be put here */
double primitive(int n,double c[],double p){
	double sum=0;
	int i;
	for(i=n;i>=0;i--){
		sum=sum*p+c[i];
	}
	return sum;
}

double derivative(int n,double c[],double p){
	double sum=0;
	int i;
	for(i=n;i>=1;i--){
		sum=sum*p+c[i]*i;
	}
	return sum;
}

double derivative2(int n,double c[],double p){
	double sum=0;
	int i;
	for(i=n;i>=2;i--){
		sum=sum*p+c[i]*i*(i-1);
	}
	return sum;
}

double Polynomial_Root(int n, double c[], double a, double b, double EPS){
	double temp;
	int i,time=4,j;
	if(a>b){
		temp=a;
		a=b;
		b=temp;
	}
	for(j=0;j<time;j++){
		temp=a+(a-b)*j/(time-1);
		for(i=0;i<=1000;i++){
			double p=derivative(n,c,temp)*derivative(n,c,temp)-primitive(n,c,temp)*derivative2(n,c,temp);
			p=temp-primitive(n,c,temp)*derivative(n,c,temp)/p;
			if(p>b||p<a)break;
			if(fabs(temp-p)<EPS)return p;
			temp=p;
		}
	}
}
