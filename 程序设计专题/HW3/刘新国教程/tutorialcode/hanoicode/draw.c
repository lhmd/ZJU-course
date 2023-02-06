//===========================================================================
//
//  版权所有者： 刘新国，浙江大学计算机科学与技术学院
//                       CAD&CG国家重点实验室
//               xgliu@cad.zju.edu.cn
//  
//  初次创建：2018年4月8日，用于<<程序设计专题>>课程教学
//            演示内容：
//            1. 汉诺塔问题求解
//            2. libgraphics动画
//            3. 基于堆栈的递归实现
//            
//
//===========================================================================
#include <stdio.h>
#include <stdlib.h>


#include "graphics.h"
#include "extgraph.h"
#include "genlib.h"
#include "simpio.h"
#include "conio.h"
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

#include <windows.h>
#include <olectl.h>
#include <mmsystem.h>
#include <wingdi.h>
#include <ole2.h>
#include <ocidl.h>
#include <winuser.h>

#include "imgui.h"

#include "hanoi.h"

static double tower_x[3];       // 塔x坐标
static double tower_y;          // 塔y坐标
static double pod_size;         // 杆子的半径
static double pod_height;       // 杆子高度
static double support_size;     // 塔底座宽度
static double support_height;   // 底座厚度
static double disc_size;        // 最大的铁盘半径
static double disc_height;      // 铁盘厚度

static void set_scales(double winwidth, double winheight)
{
	tower_x[0] = winwidth / 8 * 2;
	tower_x[1] = winwidth / 8 * 4;
	tower_x[2] = winwidth / 8 * 6;
	tower_y    = winheight / 2;
	support_size = winwidth / 5;
	support_height = winheight / 90;
	pod_height = winheight / 3;

	disc_size = support_size * 0.9;
	disc_height = pod_height/(g_disc_count+5);
	pod_size = disc_size/(MAX_DISC_COUNT+9);
}

// 第d号铁盘的半径，铁盘从下到上的编号依次为：0，1，2，。。。
static double DiscSize(int d)
{
	return disc_size / g_disc_count * (g_disc_count-d);
}


// draw a rectangle
//    (cx,cy) - center
//       w    - width
//       h    - height
static void draw_rect(double cx, double cy, double w, double h, int fill)
{
	drawRectangle(cx-w/2, cy-h/2, w, h, fill);
}

// draw 铁塔
static void draw_towers()
{
	int k;
	SetPenColor("Blue");
	for( k = 0; k<3; k++ ) {
		// tower pod
		draw_rect(tower_x[k], tower_y+pod_height/2, pod_size*2, pod_height, 1);
		// tower support
		draw_rect(tower_x[k], tower_y-support_height/2,  support_size, support_height, 1);
	}
}


static void draw_disc(double cx, double cy, int d)
{
	double w = DiscSize(d);
	SetPenColor("Red");
	draw_rect(cx, cy, w, disc_height, 1);
	SetPenColor("Blue");
	draw_rect(cx, cy, w, disc_height, 0);
}

// draw 铁盘
static void draw_discs()
{
	int k, j;
	for( k = 0; k<3; k++ ) {
		for( j = 0; j<g_towers[k].discNum; j++ )
		{
			int d = g_towers[k].discList[j];
			double cx = tower_x[k];
			double cy = tower_y + disc_height * ( 0.5 + j );
			draw_disc(cx, cy, d);
		}
	}
}

// 线性插值函数
double linear_interpolation(double a, double b, double t)
{
	return a*(1-t) + b*t;
}

void draw_flying_disc()
{
	int d = g_flying_disc.id;
	int tF = g_flying_disc.towerFrom;
	int tT = g_flying_disc.towerTo;
	double ft = g_flying_disc.time;
	double s, cx, cy;

	if( d < 0 ) 
		return; // no disc is flying
	
	// compute the position of the flying disc
	if( ft<0.33 ) { // going up，从原来的铁塔上面升起
		s = ft/0.33;
		cx = tower_x[tF];
		cy = tower_y + linear_interpolation( disc_height * (0.5 + g_towers[tF].discNum), pod_height*1.1, s);
	}
	else if ( ft<0.66 ) { // going horizontally，向新的铁塔移动
		s = (ft-0.33)/0.33;
		cx = linear_interpolation(tower_x[tF], tower_x[tT], s);
		cy = tower_y + pod_height*1.1;

	}
	else { // going down 降落到新的铁塔上面
		s = (ft-0.66)/0.34;
		cx = tower_x[tT];
		cy = tower_y + linear_interpolation( disc_height * (0.5 + g_towers[tT].discNum), pod_height*1.1, 1-s);
	}

	// draw the disc
	SetPenColor("Red");
	draw_disc(cx, cy, d);
}

void DrawHanoi(double winwidth, double winheight)
{
	// 设置铁塔的位置，铁塔和铁盘的绘制尺寸
	set_scales(winwidth, winheight); 
	draw_towers(); // 铁塔
	draw_discs();  // 铁盘
	draw_flying_disc(); // 飞行的铁盘
}



