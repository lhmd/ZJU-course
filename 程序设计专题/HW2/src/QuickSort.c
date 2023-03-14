extern struct database{
		int base;
		char s[30];
};
#include"QuickSort.h"
void QuickSort1(int *p,int n){
	int low=0,high=n-1;//头和尾 
	int temp=p[0];
	while(low<high){//判断两个标记点是否重合 
		while(low<high&&p[high]>=temp){
			high--;//尾前移 
		}
		p[low]=p[high];
		while(low<high&&p[low]<=temp){
			low++;//头后移 
		}
		p[high]=p[low];
	}
	p[low]=temp;
	//递归排序temp前面和后面 
	if(low-1>1){
		QuickSort1(p,low-1);
	}
	if(n-high-1>1){
		QuickSort1(&p[low+1],n-high-1);
	}
}
void QuickSort2(char *p,int n){//字符类型，算法同上 
	int low=0,high=n-1;
	char temp=p[0];
	while(low<high){
		while(low<high&&p[high]>=temp){
			high--;
		}
		p[low]=p[high];
		while(low<high&&p[low]<=temp){
			low++;
		}
		p[high]=p[low];
	}
	p[low]=temp;
	if(low-1>1){
		QuickSort2(p,low-1);
	}
	if(n-high-1>1){
		QuickSort2(&p[low+1],n-high-1);
	}
}
void QuickSort3(struct database *p,int n){//结构类型 
	int low=0,high=n-1;
	int temp=p[0].base;//temp为int类型 
	while(low<high){
		while(low<high&&p[high].base>=temp){
			high--;//尾后移 
		}
		p[low].base=p[high].base;
		strcpy(p[low].s,p[high].s);
		while(low<high&&p[low].base<=temp){
			low++;//头前移 
		}
		p[high].base=p[low].base;
		strcpy(p[high].s,p[low].s);
	}
	p[low].base=temp;
	//递归 
	if(low-1>1){
		QuickSort3(p,low-1);
	}
	if(n-high-1>1){
		QuickSort3(&p[low+1],n-high-1);
	}
}
