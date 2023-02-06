#include "search_mode.h"
extern int mode;//模式记录

static int isChosen=0;//是否选择模式

void display7() {
	DisplayClear();
//	主标题
	SetPenColor("Black");
	SetPointSize(25);
	drawLabel(WindowWidth/2-TextStringWidth("模  式  选  择")/2,9*WindowHeight/10,"模  式  选  择");
//	选择模式
	SetPointSize(30);
	setButtonColors("Brown","White","Gray","White",1);
	if(button(GenUIID(0),4,5,4,5,"对 弈 模 式")) {
		record(0);
		isChosen=1;
	}
	if(button(GenUIID(0),12,5,4,5,"录 制 模 式")) {
		record(1);
		isChosen=1;
	}
//	提交并开始游戏
	SetPointSize(20);
	while(button(GenUIID(0),8,2.5,4,1,"开始游戏")) {
		if(isChosen) {
			mode=6;
		}
	}
//	返回按钮
	SetPenColor("Black");
	SetPointSize(15);
	setButtonColors("Brown","Brown","Gray","Gray",0);
	if(button(GenUIID(0),17,1,3,1,"返回")) {
		mode=1;
	}
}
