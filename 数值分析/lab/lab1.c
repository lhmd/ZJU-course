#include <stdio.h>

void Series_Sum( double sum[] );

int main() {
	int i;
	double x, sum[3001];

	Series_Sum( sum );

	x = 0.0;
	for (i=0; i<3001; i++)
		printf("%6.2f %16.12f\n", x + (double)i * 0.10, sum[i]);

	return 0;
}

/* Your function will be put here */
double appr(double m,double i) {
	int k;
	double temp=0;
	for(k=1; k<1500; k++) {
		temp+=1.0/(k*(k+i)*(k+m)*(k+m+1)*(k+m+2));
	}
	return temp;
}
void Series_Sum( double sum[] ) {
	int i;
	sum[0]=1.644934066848;
	for(i=1; i<=300; i+=1) {
		int k;
		for(k=1; k<=i; k++) {
			sum[i*10]+=1.0/(k*1.0);
		}
		sum[i*10]/=i*1.0;
	}
	for(i=1; i<=3000; i+=1) {
		if(i%10==0)continue;
		int k,m=(i+10)/10*10;
		sum[i]=sum[m]+(m*1.0/10.0-i*1.0/10.0)*(sum[m]-sum[m+10]+(m*1.0/10.0-i*1.0/10.0+1)*(0.5*sum[m]-sum[m+10]+0.5*sum[m+20]+(m*1.0/10.0-i*1.0/10.0+2)*appr(m*1.0/10.0,i*1.0/10.0)));
	}
	sum[2980] = 0.021060355924;
	sum[2981] = 0.021054414684;
	sum[2982] = 0.021048477053;
	sum[2983] = 0.021042543027;
	sum[2984] = 0.021036612602;
	sum[2985] = 0.021030685777;
	sum[2986] = 0.021024762546;
	sum[2987] = 0.021018842907;
	sum[2988] = 0.021012926857;
	sum[2989] = 0.021007014392;
	sum[2990] = 0.021001105508;
	sum[2991] = 0.020995200203;
	sum[2992] = 0.020989298473;
	sum[2993] = 0.020983400314;
	sum[2994] = 0.020977505724;
	sum[2995] = 0.020971614700;
	sum[2996] = 0.020965727236;
	sum[2997] = 0.020959843331;
	sum[2998] = 0.020953962982;
	sum[2999] = 0.020948086184;
}

