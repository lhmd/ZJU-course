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

// 旋转计时器
#define MOVE_DISC  1


/***************************************************************
 VisualStudio 2010 用户注意：
    将Character Set设置为 Use Multibyte Character Set
	否则中文显示不正常
***************************************************************/

// 全局变量
static double winwidth, winheight;   // 窗口尺寸
static int    enable_move_disc = 1;  // 允许移动
static int    timer_interval = 2;    // 间隔时间 (in ms)
static char   time_elapse_speed[64]; // 用于编辑时间流逝速度

void SetSpeedEditString(double speed)
{
	sprintf(time_elapse_speed, "%f", speed);
}
double GetEditTimeSpeed()
{
	double v = 0;
	sscanf(time_elapse_speed, "%lf", &v);
	return v;
}

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

// 用户的计时器时间响应函数
void TimerEventProcess(int timerID)
{
	if( timerID==MOVE_DISC && enable_move_disc ) 
	{
		int s = OneStepHanoi();
		// if( s )	display(); // 刷新显示
	}
	display(); // 刷新显示
}

// 用户主程序入口
// 仅初始化执行一次
void Main() 
{
	// 打开控制台，方便用printf/scanf输出/入变量信息，方便调试
	//InitConsole(); 

	// 初始化窗口和图形系统
	SetWindowTitle("汉诺塔动画演示");
	SetWindowSize(10, 8); // 单位 - 英寸
	//SetWindowSize(10, 20);  // 如果屏幕尺寸不够，则按比例缩小
    InitGraphics();

	// 获得窗口尺寸
    winwidth = GetWindowWidth();
    winheight = GetWindowHeight();

	// 注册时间响应函数
	registerCharEvent(CharEventProcess);        // 字符
	registerKeyboardEvent(KeyboardEventProcess);// 键盘
	registerMouseEvent(MouseEventProcess);      // 鼠标
	registerTimerEvent(TimerEventProcess);      // 定时器

	// 开启定时器
	startTimer(MOVE_DISC, timer_interval);

	// 初始化汉诺塔
	InitTower(6);
	SetSpeedEditString(GetHanoiTimeElapseSpeed());
}

void DrawMenu()
{
	static char * menuListFile[] = {"File",  
		"重新开始  | Ctrl-R", // 快捷键必须采用[Ctrl-X]格式，放在字符串的结尾
		"Exit            | Ctrl-E"};
	static char * menuListTool[] = {"Tool",
		"暂停动画    | Ctrl-T"};
	static char * menuListHelp[] = {"Help",
		"关于本软件"};

	double fH = GetFontHeight();
	double x = 0; //fH/8;
	double y = winheight;
	double h = fH*1.5; // 控件高度
	double w = TextStringWidth(menuListFile[0])*2; // 主菜单宽度
	double wlist = TextStringWidth(menuListFile[1])*1.2;
	double xindent = winheight/20; // 缩进
	int    selection;
	
	// menu bar
	drawMenuBar(0,y-h,winwidth,h);
	// File 菜单
	selection = menuList(GenUIID(0), x, y-h, w, wlist, h, menuListFile, sizeof(menuListFile)/sizeof(menuListFile[0]));
	if( selection==2 )
		exit(-1); // choose to exit
	else if( selection==1 )
	{
		InitTower(g_disc_count);
	}
	
	// Tool 菜单
	menuListTool[1] = enable_move_disc ? "暂停动画   |   Ctrl-T" : "继续动画   |   Ctrl-T";
	selection = menuList(GenUIID(0),x+w,  y-h, w, wlist,h, menuListTool,sizeof(menuListTool)/sizeof(menuListTool[0]));
	if( selection==1 )
		enable_move_disc = ! enable_move_disc;
	
	// Help 菜单
	selection = menuList(GenUIID(0),x+2*w,y-h, w, wlist, h, menuListHelp,sizeof(menuListHelp)/sizeof(menuListHelp[0]));
	if( selection==1 ) {
		//TODO：显示本软件信息
	}
}

void DrawButtons()
{
	double fH = GetFontHeight();
	double h = fH*2;  // 控件高度
	double x = winwidth/4;  
	double y = winheight/4; 
	double w = TextStringWidth("暂停")*3;
	double dx = w + TextStringWidth("暂");
	double dy = h * 2;

	// 输入时间流逝速度
	drawLabel(x,y+dy,"动画速度");
	if( textbox(GenUIID(0), x+dx*0.7, y+dy*0.8, w, h, time_elapse_speed, sizeof(time_elapse_speed) ) )
		SetHanoiTimeElapseSpeed( GetEditTimeSpeed() );

	if( button(GenUIID(0), x+dx*1.7, y+dy*0.8, w, h, "增加铁盘") ) {
		InitTower(g_disc_count + 1);
	}
	if( button(GenUIID(0), x+dx*2.7, y+dy*0.8, w, h, "减少铁盘") ) {
		InitTower(g_disc_count - 1);
	}

	if( button(GenUIID(0), x, y-=dy, w, h, "重来") ) {
		InitTower(g_disc_count);
	}

	if( button(GenUIID(0), x+=dx, y, w, h, enable_move_disc ? "暂停" : "继续") ) {	
		enable_move_disc = ! enable_move_disc;
	}

	if( button(GenUIID(0), x+=dx, y, w, h, "退出") ) {	
		exit(-1); 
	}
	if( button(GenUIID(0), x+=dx, y, w, h, "加速") ) {	
		SetHanoiTimeElapseSpeed( GetHanoiTimeElapseSpeed()*1.5 );
		SetSpeedEditString( GetHanoiTimeElapseSpeed() );
	}
	if( button(GenUIID(0), x+=dx, y, w, h, "减速") ) {
		SetHanoiTimeElapseSpeed( GetHanoiTimeElapseSpeed()*0.7 );
		SetSpeedEditString( GetHanoiTimeElapseSpeed() );
	}
}

void display()
{
	// 清屏
	DisplayClear();
	// 绘制汉诺塔和铁盘
	DrawHanoi(winwidth, winheight);
	// 绘制控件
	DrawMenu();
	DrawButtons();
}
