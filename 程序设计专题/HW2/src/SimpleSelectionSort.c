extern struct database{
		int base;
		char s[30];
};
#include"SimpleSelectionSort.h"
void SimpleSelectionSort1(int *p,int n){//整数类型 
	int i,j;
	for (i = 0 ; i < n - 1 ; i++){
        int min = i;//记录每次循环最小值 
        for (j = i + 1; j < n; j++)
                if ((p[j]<p[min])){
                	min = j;
				}
        swap1(&p[min], &p[i]);//交换两个值 
    }
}

void SimpleSelectionSort2(char *p,int n){//字符类型 
	int i,j;
	for (i = 0 ; i < n - 1 ; i++){
        int min = i;
        for (j = i + 1; j < n; j++)
                if (p[j]<p[min]){
                	min = j;//存储最小值 
				}
        swap2(&p[min], &p[i]);//字符交换 
    }
}

void SimpleSelectionSort3(struct database *p,int n){
	int i,j;
	for (i = 0 ; i < n - 1 ; i++){
        int min = i;
        for (j = i + 1; j < n; j++)
                if (p[j].base<p[min].base){
                	min = j;
				}
        swap3(&p[min], &p[i]);//结构交换 
    }
}
