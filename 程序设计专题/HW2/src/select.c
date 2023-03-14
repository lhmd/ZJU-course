#include"select.h"
int select(){
	int a;
	printf("请输入你想使用哪种排序算法：\n[1]SimpleSelectionSort\n[2]BubbleSort\n[3]InsertionSort\n[4]QuickSort\n");
	scanf("%d",&a);
	return a;
}
