#include "display_login.h"
extern int mode;//模式记录

//	变量定义
static char name1[20]= {0},name2[20]= {0}; // 记录用户名和密码的数组

void CharEventProcess(char ch) {
	uiGetChar(ch); // GUI字符输入
	if(mode==1)
		display1();
}

char* getname1() {
	return name1;
}

char* getname2() {
	return name2;
}

void display1() {
	DisplayClear();
//	主标题
	SetPenColor("Black");
	SetPointSize(25);
	drawLabel(WindowWidth/2-TextStringWidth("游   戏   登   录")/2,9*WindowHeight/10,"游   戏   登   录");
//	收集信息
	SetPointSize(20);
	SetPenColor("Brown");
	drawLabel(8-TextStringWidth("user1 ID:"),8.5, "user1 ID:");
	drawLabel(8-TextStringWidth("user2 ID:"),6.5, "user2 ID:");
	usePredefinedTexBoxColors(3);
	textbox(GenUIID(0),10,8,4,1,name1,sizeof(name1[0])*20);
	textbox(GenUIID(0),10,6,4,1,name2,sizeof(name2[0])*20);
//	返回按钮
	SetPointSize(15);
	setButtonColors("Brown","Brown","Gray","Gray",0);
	if(button(GenUIID(0),17,1,3,1,"返回")) {
		mode=0;
	}
//	提交用户名
	SetPointSize(20);
	setButtonColors("Brown","Brown","Gray","Gray",0);
	while(button(GenUIID(0),10,4,4,1,"提交")) {
		if(name1[0]!=0&&name2[0]!=0) {
			mode=7;
		}
	}
}
