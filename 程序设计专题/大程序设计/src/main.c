#include"Init.h"
#include "display_help.h"
#include "display_login.h"
#include "aftergame.h"
#include "display_game.h"
#include "display_history.h"
#include "search_mode.h"
#include "display_winner.h"
#include "writefile.h"
int mode;//模式记录


void MouseEventProcess(int x, int y, int button, int event) {
	uiGetMouse(x,y,button,event); //GUI获取鼠标
	double px=ScaleXInches(x);
	double py=ScaleYInches(y);
//	刷新显示
	switch(mode) {
		case 6:
			display6();
			drawChess(px,py,button,event);
			break;//游戏界面
	}
}

void Main() {
	SetWindowTitle("Chinese Chess");
	SetWindowSize(WindowWidth, WindowHeight);
	InitGraphics();
	registerCharEvent(CharEventProcess);        // 字符
	registerKeyboardEvent(KeyboardEventProcess);// 键盘
	registerMouseEvent(MouseEventProcess);      // 鼠标
	registerTimerEvent(TimerEventProcess);      // 定时器
	startTimer(0,timer_interval/1000);
	display0();
}
