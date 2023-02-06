//===========================================================================
//
//  版权所有者： 刘新国，浙江大学计算机科学与技术学院
//                       CAD&CG国家重点实验室
//               xgliu@cad.zju.edu.cn
//  最近修改：2020年3月25日 
//  初次创建：2020年3月21日，用于<<程序设计专题>>课程教学
//
//===========================================================================
/**************************************************************

1. 跟踪鼠标的位置
   在鼠标出显示一个文本box

***************************************************************/

#include "graphics.h"
#include "extgraph.h"
#include "imgui.h"

double label_x = 1.0;
double label_y = 1.0;

double mouse_x = 0, mouse_y = 0;


void display()
{
	double w = 1.0;
	double h = GetFontHeight() * 2;
	// 清除屏幕
	DisplayClear();
	// draw a square
	SetPenColor("Red");
	drawLabel(label_x, label_y, "Lable is Here");
	
	//draw a rect/box to trace the mouse
	//drawRectangle(mouse_x, mouse_y, w, h, 0);
	SetPenColor("Blue");
	drawBox(mouse_x, mouse_y, w, h, 1, "This box follows the mouse", 'L', "Red");
}

typedef enum {
	LabelTimer,
	BoxTimer,
} MyTimer;

void mytimer(int  timerID)
{
	switch (timerID)
	{
	case LabelTimer:
		label_x += 0.5;
		if (label_x > 5.0) label_x = 1.0;
		display();
		break;
	}
}

void myMouseEvent (int x, int y, int button, int event)
{
	mouse_x = ScaleXInches(x);
	mouse_y = ScaleYInches(y);
	display();
}

void Main()
{
	SetWindowTitle("演示鼠标使用方法");
	InitGraphics();

	registerTimerEvent(mytimer);
	startTimer(LabelTimer, 100);

	registerMouseEvent(myMouseEvent);

	display();
}
