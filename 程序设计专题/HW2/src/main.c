#include"select.h"
struct database{
		int base;
		char s[30];
};
#include"SimpleSelectionSort.h"
#include"swap.h"
#include"type1.h"
#include"type2.h"

int main(){
	int type=0;
	printf("请选择你想要进行排序的数据类型：\n[1]整数类型\n[2]字符串\n[3]结构体\n");
	scanf("%d",&type);
	int method=select();//选择算法 
	
//	调用type函数	
	if(type==1){
		type1(method);
	}else if(type==2){
		type2(method);
	}else if(type==3){
		type3(method);
	}
	return 0;
}
