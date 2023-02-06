#include "display_help.h"
extern int mode;//模式记录

void display3() {
	DisplayClear();
//	说明内容
	SetPenColor("Black");
	SetPointSize(25);
	drawLabel(WindowWidth/2-TextStringWidth("游   戏   说   明")/2,9*WindowHeight/10,"游   戏   说   明");
	SetPointSize(15);
	drawLabel(WindowWidth/10,8*WindowHeight/10,"1.请输入账号密码开始你的游戏");
	drawLabel(WindowWidth/10,7*WindowHeight/10,"2.有对弈模式和录制模式可供选择");
	drawLabel(WindowWidth/10,6*WindowHeight/10,"3.在录制模式下也会记录双方战局");
	drawLabel(WindowWidth/10,5*WindowHeight/10,"4.可在开始界面回放你录制的内容及查看录入的棋谱");
	drawLabel(WindowWidth/10,4*WindowHeight/10,"5.使用鼠标进行棋子移动控制");
	drawLabel(WindowWidth/10,3*WindowHeight/10,"6.游戏界面快捷键：F1--暂停游戏 F2--继续游戏 F3--重新开始 F4--悔棋 ESC--返回");
	drawLabel(WindowWidth/10,2*WindowHeight/10,"7.可通过查看对局胜负榜查看历史对局胜负情况");
	drawLabel(WindowWidth/10,WindowHeight/10,"8.每局仅有一次悔棋机会");
//	返回按钮
	SetPointSize(15);
	setButtonColors("Brown","Brown","Gray","Gray",0);
	if(button(GenUIID(0),17,1,3,1,"返回")) {
		mode=0;
	}
}

void display4() {
	DisplayClear();
//	关于内容
	SetPenColor("Black");
	SetPointSize(25);
	drawLabel(WindowWidth/2-TextStringWidth("关   于   我   们")/2,9*WindowHeight/10,"关   于   我   们");
	SetPointSize(15);
	drawLabel(WindowWidth/10,8*WindowHeight/10,"开发者：王伟杰");
	drawLabel(WindowWidth/10,7*WindowHeight/10,"感谢纪守领老师对本程序的指导支持");
	drawLabel(WindowWidth/10,6*WindowHeight/10,"引用图形库：Libgraphics&&simpleGUI");
	drawLabel(WindowWidth/10,4*WindowHeight/10,"最后一次编辑时间：2022/5/31");
	drawLabel(WindowWidth/10,3*WindowHeight/10,"游戏名：中国象棋      版本号：1.2.2");
//	返回按钮
	SetPointSize(15);
	setButtonColors("Brown","Brown","Gray","Gray",0);
	if(button(GenUIID(0),17,1,3,1,"返回")) {
		mode=0;
	}
}
