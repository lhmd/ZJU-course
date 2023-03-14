extern struct database{
		int base;
		char s[30];
}data;
#include"type3.h"
void type3(int method){
	//输入 
	int n,i;
	printf("请输入结构数组元素个数：\n"); 
	scanf("%d",&n);
	struct database data[n];
	printf("请输入结构内容（序号 数据）：\n");
	for(i=0;i<n;i++){
		scanf("%d %s",&data[i].base,data[i].s);
	}
	struct database *p=data;
	//比较 
	switch(method){
		case 1:SimpleSelectionSort3(p,n);break;
		case 2:BubbleSort3(p,n);break;
		case 3:InsertionSort3(p,n);break;
		case 4:QuickSort3(p,n);break;
	}
	//输出 
	for(i=0;i<n;i++){
		printf("%d %s\n",data[i].base,data[i].s);
	}
}
