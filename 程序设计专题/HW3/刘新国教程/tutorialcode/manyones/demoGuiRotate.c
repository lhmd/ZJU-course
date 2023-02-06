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

// 全局变量
static double winwidth, winheight;   // 窗口尺寸
static float  rot_angle = 0;         // 三角形旋转角度
static int    enable_rotation = 1;   // 允许旋转

// 清屏函数，provided in libgraphics
void DisplayClear(void); 
// 计时器启动函数，provided in libgraphics
void startTimer(int id,int timeinterval);

// 用户的显示函数
void display(void); 

// 用户的字符事件响应函数
void CharEventProcess(char ch)
{
	uiGetChar(ch); // GUI字符输入
	display(); //刷新显示
}

// 用户的键盘事件响应函数
void KeyboardEventProcess(int key, int event)
{
	uiGetKeyboard(key,event); // GUI获取键盘
	display(); // 刷新显示
}

// 用户的鼠标事件响应函数
void MouseEventProcess(int x, int y, int button, int event)
{
	uiGetMouse(x,y,button,event); //GUI获取鼠标
	display(); // 刷新显示
}

// 旋转计时器
#define MY_ROTATE_TIMER  1

// 用户的计时器时间响应函数
void TimerEventProcess(int timerID)
{
	if( timerID==MY_ROTATE_TIMER && enable_rotation ) 
	{
		rot_angle += 10; // 全局变量
		display(); // 刷新显示
	}
}

// 用户主程序入口
// 仅初始化执行一次
void Main() 
{
	// 初始化窗口和图形系统
	SetWindowTitle("Graphics User Interface Demo");
	//SetWindowSize(10, 10); // 单位 - 英寸
	//SetWindowSize(20, 10);
	//SetWindowSize(10, 20);  // 如果屏幕尺寸不够，则按比例缩小
    InitGraphics();

	// 获得窗口尺寸
    winwidth = GetWindowWidth();
    winheight = GetWindowHeight();

	// 注册时间响应函数
	registerKeyboardEvent(KeyboardEventProcess);// 键盘
	registerMouseEvent(MouseEventProcess);      // 鼠标
	registerTimerEvent(TimerEventProcess);      // 定时器

	// 开启定时器
	startTimer(MY_ROTATE_TIMER, 50);            

	// 打开控制台，方便输出变量信息，便于调试
	// InitConsole(); 

}

#include <math.h>

// 对三角形的坐标进行旋转
// cenx, ceny - 旋转中心的坐标
// angle - 旋转角度
// tri[i][0/1] - 三角形第 i 个顶点的x/y坐标
void rot_triangle(double cenx, double ceny, double angle, double tri[][2])
{
	double c = cos(angle/180*3.14159265);
	double s = sin(angle/180*3.14159265);
	int k;
	for( k = 0; k<3; k++ )
	{
		double dx = tri[k][0]-cenx;
		double dy = tri[k][1]-ceny;
		tri[k][0] = cenx + dx * c - dy * s;
		tri[k][1] = ceny + dx * s + dy * c;
	}
}

// 画三角形 <t[0], t[1], t[2]>
void draw_triangle(double t[][2])
{
	int k;
	double x = t[2][0];
	double y = t[2][1];
	MovePen(x, y);
	for( k=0; k<3; k++ ) {
		DrawLine(t[k][0]-x, t[k][1]-y);
		x = t[k][0];
		y = t[k][1];
	}
}

// 旋转三角形演示程序
void drawRotateTriangle()
{
	double cx = winwidth/5*4;
	double cy = winheight/4*3;
	double dtx = winwidth/15;
	double dty = winheight/8;
	double tri[3][2] ={ {cx, cy}, {cx+dtx, cy}, {cx+dtx/2, cy+dty} };
	double fH = GetFontHeight();
	double h = fH*2; // 控件高度
	double w = winwidth/5; // 控件宽度
	double x = winwidth/2.5;
	double y = winheight/4*3;

	// 三角形
	rot_triangle(tri[0][0],tri[0][1],rot_angle,tri);
	SetPenColor("Green");
	draw_triangle(tri);

	// 旋转按钮
	if (button(GenUIID(0), x, y+h, w, h, enable_rotation ? "Stop Rotation" : "Start Rotation"))
		enable_rotation = ! enable_rotation;

	// 程序退出按钮
	if( button(GenUIID(0), x, y-h, w, h, "Click to Quit") )
		exit(-1);
}


void display()
{
	// 清屏
	DisplayClear();

	// 旋转的三角形
	drawRotateTriangle();
}