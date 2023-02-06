//===========================================================================
//
//  版权所有者： 刘新国，浙江大学计算机科学与技术学院
//                       CAD&CG国家重点实验室
//               xgliu@cad.zju.edu.cn
//  最近修改：2020年3月25日 
//  初次创建：2020年3月21日，用于<<程序设计专题>>课程教学
//
//===========================================================================
#include "graphics.h"
#include "extgraph.h"
#include "imgui.h"

void display()
{
	double x = 1.0; //单位是英寸
	double y = 1.0; //单位是英寸
	double w = 1.0; //单位是英寸
	double h = GetFontHeight() * 2; //单位是英寸
	// draw a square
	SetPenColor("Blue");
	drawLabel(x, y, "Blue Lable is Here");
	// 取消下面的注释，draw 更多的东西
	drawRectangle(x, y += h*1.2, w, h, 0);
	SetPenColor("Red"); drawBox(x, y += h*1.2, w, h, 0, "Box is here", 'C', "Green");
	SetPenColor("Red"); drawBox(x, y += h*1.2, w, h, 1, "Filled Box is here", 'L', "Green");
}

void Main()
{
	SetWindowTitle("画些什么东西");
	InitGraphics();

	display();
}