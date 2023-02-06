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

/***************************************************************
 VisualStudio 2010 用户注意：
    将Character Set设置为 Use Multibyte Character Set
	否则中文显示不正常
***************************************************************/

// 清屏函数，provided in libgraphics
void DisplayClear(void); 
// 计时器启动函数，provided in libgraphics
void startTimer(int id,int timeinterval);

// 用户的显示函数
void display(void); 

// 旋转计时器
#define MY_ROTATE_TIMER  1

// 用户的计时器时间响应函数
void TimerEventProcess(int timerID)
{
	display(); // 刷新显示
}

// 用户主程序入口
// 仅初始化执行一次
void Main() 
{
	// 初始化窗口和图形系统
	SetWindowTitle("Graphics User Interface Demo");
	SetWindowSize(1600, 800);
    InitGraphics();
	InitGUI();

	// 设置定时器
	registerTimerEvent(TimerEventProcess);
	// 开启定时器
	startTimer(MY_ROTATE_TIMER, 50);            
}

void display()
{
	double fh = GetFontHeight();
	double fa = GetFontAscent();
    double winwidth = GetWindowWidth();
    double winheight = GetWindowHeight();
	int maxPixels = 35, n;
	double x = 2*maxPixels/(double)GetXResolution();
	double y = winheight;
	double dy = maxPixels/(double)GetYResolution();
	double w = winwidth/3;
	char buf[256];

	// 清屏
	DisplayClear();
	for( n = 5; n<maxPixels; n++ )
	{
		double h = n/(double)GetYResolution();
		sprintf(buf, "Box Height = %d Pixels or %.2f Inches", n, h);
		drawBox(x, y-=dy, w, h, buf,'L');
		if(n==2+maxPixels/2) { 
			x += 1.5*w;
			y  = winheight;
		}
	}

	sprintf(buf, "font height = %.2f, font ascent = %.2f, Enjoy!", fh, fa);
	drawLabel(x, y-=dy, buf);
}
	
