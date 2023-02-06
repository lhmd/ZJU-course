#include"Init.h"
extern int mode;//模式记录

void display0() {
	DisplayClear();
//	大标题
	SetPointSize(50);
	SetPenColor("black");
	drawLabel(WindowWidth/2-TextStringWidth("中 国 象 棋")/2,11,"中 国 象 棋");
//	主菜单
	SetPointSize(25);
	setButtonColors("white","Brown","white","Gray",0);
	if(button(GenUIID(0),WindowWidth/2-1.3*TextStringWidth("登录并开始游戏")/2,8,1.3*TextStringWidth("登录并开始游戏"),1.5,"登录并开始游戏")) {
		mode=1;
	}
	if(button(GenUIID(0),WindowWidth/2-TextStringWidth("对局胜负榜")/2,6,TextStringWidth("对局胜负榜"),1.5,"对局胜负榜")) {
		mode=2;
	}
	if(button(GenUIID(0),WindowWidth/2-TextStringWidth("历史对局与棋谱")/2,4,TextStringWidth("历史对局与棋谱"),1.5,"历史对局与棋谱")) {
		mode=5;
	}
//	帮助界面
	SetPointSize(15);
	setButtonColors("white","Brown","white","Gray",0);
	if(button(GenUIID(0),14,1,3,1,"退出软件")) {
		exit(0);
	}
	if(button(GenUIID(0),17,1,1.5,1,"帮助")) {
		mode=3;
	}
	if(button(GenUIID(0),18.5,1,1.5,1,"关于")) {
		mode=4;
	}
}
