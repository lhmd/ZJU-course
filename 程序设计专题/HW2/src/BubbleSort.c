extern struct database{
		int base;
		char s[30];
};
#include"BubbleSort.h"
void BubbleSort1(int *p,int n){//整数 
	int i,j;
	for (j=0;j<n-1;j++){                           
        for (i=0;i<n-1-j;i++){//两次循环达到冒泡效果 
        	if(p[i]>p[i+1]){
                swap1(&p[i+1], &p[i]);//交换 
            }
        }
    }
}
void BubbleSort2(char *p,int n){//字符类型 
	int i,j;
	for (j=0;j<n-1;j++){                           
        for (i=0;i<n-1-j;i++){
        	if(p[i]>p[i+1]){
                swap2(&p[i+1], &p[i]);
            }
        }
    }
}
void BubbleSort3(struct database *p,int n){
	int i,j;
	for (j=0;j<n-1;j++){                    
        for (i=0;i<n-1-j;i++){
        	if(p[i].base>p[i+1].base){//比较base值 
                swap3(&p[i+1], &p[i]);
            }
        }
    }
}
