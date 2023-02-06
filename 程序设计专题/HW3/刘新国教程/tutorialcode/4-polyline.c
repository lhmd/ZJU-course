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

1. 如何用鼠标输入一个折线多边形
2. 如何使用通用型链表

***************************************************************/
#include "graphics.h"
#include "extgraph.h"
#include "imgui.h"
#include "linkedlist.h"

typedef struct{
	double x, y;
} Point;

linkedlistADT g_polylines = NULL;

void display()
{
	linkedlistADT poly = NextNode(g_polylines, g_polylines);
	
	SetPenColor("Blue");
	if (poly) {
		Point * p = (Point*) NodeObj(g_polylines, poly);
		double lx = p->x;
		double ly = p->y;
		MovePen(lx, ly);
		while (poly = NextNode(g_polylines, poly))
		{
			p = (Point*) NodeObj(g_polylines, poly);
			DrawLine(p->x - lx, p->y - ly);
			lx = p->x;
			ly = p->y;
		}
	}
}

void AddPoint(double x, double y)
{
	Point * p = malloc(sizeof(Point));
	p->x = x;
	p->y = y;
	InsertNode(g_polylines, NULL, p);
}

void myMouseEvent (int x, int y, int button, int event)
{
	double mx = ScaleXInches(x);
	double my = ScaleYInches(y);
	switch (event)
	{
	case BUTTON_UP:
		if (button == LEFT_BUTTON)
			AddPoint(mx, my);
		display();
		break;
	}
	display();
}

void Main()
{
	SetWindowTitle("绘制多边形");
	SetWindowSize(7.0, 5.0);
	InitGraphics();

	registerMouseEvent(myMouseEvent);

	g_polylines = NewLinkedList();
	//display();
}