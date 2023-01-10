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

#define deltax 0.03
#define deltay 0.03

#define TIMER_BLINK500  1     /*500ms定时器事件标志号*/
#define TIMER_BLINK1000 2     /*1000ms定时器时间标志号*/

const int mseconds500 = 500;   
const int mseconds1000 = 1000; 

static double ccx = 1.0, ccy = 1.0;/*圆心坐标*/
static double radius = 1.0; /*圆半径*/

//static bool isBlink = FALSE;   /*是否闪烁标志*/
static bool isDisplayCircle = TRUE; /*圆显示标志*/
static bool isDisplayCircle2 = TRUE; /*大圆显示标志*/

void DrawCenteredCircle(double x, double y, double r);/*画中心圆*/
/*判断点(x0,y0)是否在矩形包围盒(x1, y1) --> (x2, y2)范围内*/
void TimerEventProcess(int timerID);/*定时器消息回调函数*/

void Main() /*仅初始化执行一次*/
{
    InitGraphics();        	
	
	
	registerTimerEvent(TimerEventProcess);/*注册定时器消息回调函数*/

	SetPenColor("Red"); 
    SetPenSize(1);
    
    ccx = GetWindowWidth()/2;
    ccy = GetWindowHeight()/2;
    DrawCenteredCircle(ccx, ccy, radius);
    DrawCenteredCircle(ccx, ccy, radius*2);
    
    startTimer(TIMER_BLINK500, mseconds500);/*500ms定时器触发*/
    startTimer(TIMER_BLINK1000, mseconds1000);/*1000ms定时器触发*/
}

void DrawCenteredCircle(double x, double y, double r)
{
	SetPenSize(5);
    MovePen(x + r, y);
    DrawArc(r, 0.0, 360.0);
}

void TimerEventProcess(int timerID)
{
      bool erasemode;

	  switch (timerID) {
	    case TIMER_BLINK500: /*500ms光标闪烁定时器*/
	      erasemode = GetEraseMode();
		  SetEraseMode(isDisplayCircle);
          DrawCenteredCircle(ccx, ccy, radius);
	      SetEraseMode(erasemode);
		  isDisplayCircle = !isDisplayCircle;
		  break;
	    case TIMER_BLINK1000: /*1000ms光标闪烁定时器*/
	      erasemode = GetEraseMode();
		  SetEraseMode(isDisplayCircle2);
          DrawCenteredCircle(ccx, ccy, radius*2);
	      SetEraseMode(erasemode);
		  isDisplayCircle2 = !isDisplayCircle2;
		  break;
	    default:
		  break;
	  }
}
