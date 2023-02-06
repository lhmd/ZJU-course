#include"type2.h"
void type2(int method){
	//输入 
	int n,i;
	printf("请输入字符串元素个数：\n"); 
	scanf("%d",&n);
	char a[n];
	printf("请输入字符串：\n");
		scanf("%s",a);
	char *p=a;
	//排序 
	switch(method){
		case 1:	SimpleSelectionSort2(p,n);break;
		case 2:BubbleSort2(p,n);break;
		case 3:InsertionSort2(p,n);break;
		case 4:QuickSort2(p,n);break;
	}
	//输出 
	printf("%s\n",a);
}	
