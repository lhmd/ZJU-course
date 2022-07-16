#include<iostream>
#include<cstdio>
#include<cstdlib>
#include<cstring>
#include<algorithm>

typedef long long LL;

const int N=505;
const int MOD=1000000007;

int n,f[N],ny2,ny3;

int ksm(int x,int y)
{
	int ans=1;
	while (y)
	{
		if (y&1) ans=(LL)ans*x%MOD;
		x=(LL)x*x%MOD;y>>=1;
	}
	return ans;
}

int get(int x,int y)
{
	if (y==2) return (LL)((LL)x*x%MOD+x)*ny2%MOD;
	else return ((LL)x*(x-1)%MOD*(x-2)%MOD*ny3%MOD+(LL)x*(x-1)%MOD+(LL)x)%MOD;
}

int main()
{
	scanf("%d",&n);
	ny2=ksm(2,MOD-2);
	ny3=ksm(6,MOD-2);
	f[0]=f[1]=1;
	for (int i=2;i<=n;i++)
		for (int j=0;j<i;j++)
			for (int k=j;k+j<i;k++)
			{
				int l=i-j-k-1;
				if (l<k) continue;
				if (j==k&&k==l) (f[i]+=get(f[j],3))%=MOD;
				else if (j==k) (f[i]+=(LL)get(f[j],2)*f[l]%MOD)%=MOD;
				else if (k==l) (f[i]+=(LL)get(f[k],2)*f[j]%MOD)%=MOD;
				else (f[i]+=(LL)f[j]*f[k]%MOD*f[l]%MOD)%=MOD;
			}
	printf("%d\n",f[n]);
	return 0;
}

