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


#include "turtle/turtle.h"

#ifdef M_PI
#error "出错的case"
#endif

void display()
{
	MovePen(4, 4);
	turtle_lookat(90);
	turtle_show(0.3);
}

void Main()
{
	SetWindowTitle("乌龟画图");
	InitGraphics();

	display();
}