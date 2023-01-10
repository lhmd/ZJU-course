#include<stdio.h>
#include<time.h>
#include<stdlib.h>

//Set the array size in advance to prevent out of bounds
int M[105][105],sum[105][105];

//Functions with operation complexity of O (n6)
void n6(int N);
//Functions with operation complexity of O (n4)
void n4(int N);
//Functions with operation complexity of O (n3)
void n3(int N);

//Randomly give an integer from - 20 to 20
int Random() {
	int a=rand()%41-20;
//	printf("%d\n",a);
	return a;
}


clock_t start, stop; /* clock_t is a built-in type for processor time (ticks)*/
double duration;/*records the run time (seconds) of a function*/
int main () {
	/*clock() returns the amount of processor time (ticks) that has elapsed
	since the program began running */

//	Set the size of N and the number of times the function runs
	int a[]= {5,10,30,50,80,100},i;
	int k[]= {10000,1000,50,10,1,1};

//	output
	printf("n6 condition\n");
	printf("N\tK\tTICKS\tTOTAL_TIME\tDURATION\n");
//	Run six different array sizes
	for(i=0; i<6; i++) {
		start = clock(); /* records the ticks at the becinnina of the function call*/
//		Run the function for many times and take the average value
		int j;
		for(j=0; j<k[i]; j++)
			n6(a[i]);/*run your function here */
		stop = clock();/*records the ticks at the end of the function call*/
//		take the average value
		duration = ((double)(stop - start))/CLK_TCK;
		double single_duration=duration/k[i];
//		output the value
		printf("%-6d\t%-d\t%-6d\t%6lf\t%6lf\n",a[i],k[i],(stop - start),duration,single_duration);
	}

	printf("n4 condition\n");
	printf("N\tK\tTICKS\tTOTAL_TIME\tDURATION\n");
//	Run six different array sizes
	for(i=0; i<6; i++) {
		start = clock(); /* records the ticks at the becinnina of the function call*/
		int j;
		for(j=0; j<k[i]; j++)
			n4(a[i]);/*run your function here */
		stop = clock();/*records the ticks at the end of the function call*/
//		take the average value
		duration = ((double)(stop - start))/CLK_TCK;
		double single_duration=duration/k[i];
//		output the value
		printf("%-6d\t%-d\t%-6d\t%6lf\t%6lf\n",a[i],k[i],(stop - start),duration,single_duration);
	}

//	resize the run times
	k[2]=1000;
	k[3]=1000;
	k[4]=500;
	k[5]=200;
	printf("n3 condition\n");
	printf("N\tK\tTICKS\tTOTAL_TIME\tDURATION\n");
//	Run six different array sizes
	for(i=0; i<6; i++) {
		start = clock(); /* records the ticks at the becinnina of the function call*/
//		take the average value
		int j;
		for(j=0; j<k[i]; j++)
			n3(a[i]);/*run your function here */
		stop = clock();/*records the ticks at the end of the function call*/
		duration = ((double)(stop - start))/CLK_TCK;
		double single_duration=duration/k[i];
//		output the value
		printf("%-6d\t%-d\t%-6d\t%6lf\t%6lf\n",a[i],k[i],(stop - start),duration,single_duration);
	}
	/* CLK_TCK is a built-in constant = ticks per second*/
	return 0;
}

void n6(int N) {
//	initialize variable
	int i,j,p,q,m,n,max=0;

	int s;
//	Sowing time Seed
	srand((unsigned int)time(0));

//	Random out an array
	for(i=0; i<N; i++)
		for(j=0; j<N; j++)
			M[i][j]=Random();

//	Traverse each line to set the end point
	for(i=0; i<N; i++) {
//		Traverse each column to set the end point
		for(j=0; j<N; j++) {
//			Traverse each line to set the start point
			for(p=0; p<=i; p++) {
//				Traverse each column to set the start point
				for(q=0; q<=j; q++) {
//					s represents the sum of the array
					s=0;
//					Calculate the sum of submatrixes
					for(m=p; m<=i; m++) {
						for(n=q; n<=j; n++) {
							s+=M[m][n];
						}
					}
//					Update the value of max
					if(s>max)max=s;
				}
			}
		}
	}
//	printf("%d",max);
}

void n4(int N) {
//	initialize variable
	int i,j,p,q,m,n,max=0,mat;
//	Sowing time Seed
	srand((unsigned int)time(0));

//	Randomize an array and find its prefix sum
	for(i=1; i<=N; i++) {
		for(j=1; j<=N; j++) {
			M[i][j]=Random();
//			printf("%d,",M[i][j]);
//			Prefix Sum
			sum[i][j]=M[i][j]+sum[i-1][j]+sum[i][j-1]-sum[i-1][j-1];
		}
	}

//	Traverse each line to set the end point
	for(i=1; i<=N; i++) {
//		Traverse each column to set the end point
		for(j=1; j<=N; j++) {
//			Traverse each line to set the start point
			for(p=1; p<=i; p++) {
//				Traverse each column to set the start point
				for(q=1; q<=j; q++) {
//					Summing Subarrays with Prefix Sums
					mat=sum[i][j]-sum[p-1][j]-sum[i][q-1]+sum[p-1][q-1];
//					Update the value of max
					if(mat>max)max=mat;
				}
			}
		}
	}
//	printf("%d",max);
}


void n3(int N) {
//	initialize variable
	int i,j,p,q,m,n,max=0;
//	Sowing time Seed
	srand((unsigned int)time(0));

//	Randomize an array and find its prefix sum
	for(i=1; i<=N; i++) {
		for(j=1; j<=N; j++) {
			M[i][j]=Random();
//			Prefix Sum
			sum[i][j]=M[i][j]+sum[i-1][j]+sum[i][j-1]-sum[i-1][j-1];
		}
	}

//	Traverse the number of array lines to determine which line to start from
	for(i=1; i<=N; i++) {
//		Iterate through the array, starting from line i,
//		and determine the number of remaining lines of the sub array to be calculated
		for(j=1; j<N-i+1; j++) {
//			initialize variable
//			The temp array stores the sum added to each column of the sub array,
//			and thisnum stores the maximum value added from the beginning to the current position
			int temp[N],thisnum=0;
//			Traverse each column of the subarray
			for(p=1; p<=N; p++) {
//				Calculate the value added to each column
				temp[p]=sum[i+j-1][p]-sum[i][p]+M[i][p]-sum[i+j-1][p-1]+sum[i][p-1];
//				Calculate the value added by the previous array up to this point
				thisnum+=temp[p];
//				Update the value of max
				if(thisnum>max)max=thisnum;
//				Ensure that thisnum is not negative
				if(thisnum>0)continue;
				else thisnum=0;
			}
		}
	}
//	printf("%d",max);
}
