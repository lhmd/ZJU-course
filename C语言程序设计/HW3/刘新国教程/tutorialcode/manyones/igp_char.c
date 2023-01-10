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

static double ccx = 1.0, ccy = 1.0;/*圆心坐标*/
static double radius = 1.0; /*圆半径*/

static char text[100]; /*输入的字符串缓冲区*/
static int textlen = 0;/*输入额字符串长度*/
static double textx, texty; /*字符串的起始位置*/

void DrawCenteredCircle(double x, double y, double r);/*画中心圆*/
/*判断点(x0,y0)是否在矩形包围盒(x1, y1) --> (x2, y2)范围内*/
void CharEventProcess(char c);/*字符消息回调函数*/

void Main() /*仅初始化执行一次*/
{
    InitGraphics();        	
	
	registerCharEvent(CharEventProcess);/*注册字符消息回调函数*/

	SetPenColor("Red"); 
    SetPenSize(1);
    
    ccx = GetWindowWidth()/2;
    ccy = GetWindowHeight()/2;
    DrawCenteredCircle(ccx, ccy, radius);
}

void DrawCenteredCircle(double x, double y, double r)
{
    MovePen(x + r, y);
    DrawArc(r, 0.0, 360.0);
}

void CharEventProcess(char c)
{
 	 static char str[2] = {0, 0};

     switch (c) {
       case '\r':  /* 注意：回车在这里返回的字符是'\r'，不是'\n'*/
   	 	   break;
 	   case 27: /*ESC*/
 	       break;
      default:
	  	   str[0] = c;/*形成当前字符的字符串*/
	 	   text[textlen++] = c;/*将当前字符加入到整个字符缓冲区中*/
	 	   text[textlen] = '\0';
	 	   DrawTextString(str);/*输出当前字符，且输出位置相应后移*/
	 	   break;
    }
}
