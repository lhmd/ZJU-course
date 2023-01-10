#include"type1.h"
void type1(int method){
	//输入 
	int n,i;
	printf("请输入数组元素个数：\n"); 
	scanf("%d",&n);
	int a[n];
	printf("请输入数组：\n");
	for(i=0;i<n;i++){
		scanf("%d",&a[i]);
	}
	int *p=a;
	//排序 
	switch(method){
		case 1:SimpleSelectionSort1(p,n);break;
		case 2:BubbleSort1(p,n);break;
		case 3:InsertionSort1(p,n);break;
		case 4:QuickSort1(p,n);break;
	}
	//输出 
	for(i=0;i<n;i++){
		printf("%d ",a[i]);
	}
}
