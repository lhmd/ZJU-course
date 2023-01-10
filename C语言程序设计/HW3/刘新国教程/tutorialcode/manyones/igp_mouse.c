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

static double ccx, ccy;/*圆心坐标*/
static double radius = 1.0; /*圆半径*/

void DrawCenteredCircle(double x, double y, double r);/*画中心圆*/
/*判断点(x0,y0)是否在矩形包围盒(x1, y1) --> (x2, y2)范围内*/
bool inBox(double x0, double y0, double x1, double x2, double y1, double y2);
void MouseEventProcess(int x, int y, int button, int event);/*鼠标消息回调函数*/

void Main() /*仅初始化执行一次*/
{
    InitGraphics();        	
	
	registerMouseEvent(MouseEventProcess);/*注册鼠标消息回调函数*/

	SetPenColor("Red"); 
    SetPenSize(1);
    
    ccx = GetWindowWidth()/2;
    ccy = GetWindowHeight()/2;
    
    DrawCenteredCircle(ccx, ccy, radius);/*画圆*/
}

void DrawCenteredCircle(double x, double y, double r)
{
    MovePen(x + r, y);
    
    DrawArc(r, 0.0, 360.0);
}

bool inBox(double x0, double y0, double x1, double x2, double y1, double y2)
{
	return (x0 >= x1 && x0 <= x2 && y0 >= y1 && y0 <= y2);
}

void MouseEventProcess(int x, int y, int button, int event)
{
 	 static bool isDraw = FALSE;
	 static bool isChangeRadius = FALSE;
     static double r = 0.2;
 	 static double omx = 0.0, omy = 0.0;
     double mx, my;

 	 mx = ScaleXInches(x);/*pixels --> inches*/
 	 my = ScaleYInches(y);/*pixels --> inches*/
 
     switch (event) {
         case BUTTON_DOWN:
   		 	  if (button == LEFT_BUTTON) {
				  if (inBox(mx, my, ccx-radius, ccx+radius, ccy-radius, ccy+radius)){
					  isDraw = TRUE;
				  }
			  } else if (button == RIGHT_BUTTON) {
					  isChangeRadius = TRUE;
			  }
		      omx = mx; omy = my;
              break;
    	 case BUTTON_DOUBLECLICK:
			  break;
         case BUTTON_UP:
  		 	  if (button == LEFT_BUTTON) isDraw = FALSE;
			  else if (button == RIGHT_BUTTON) isChangeRadius = FALSE;
              break;
         case MOUSEMOVE:
			  if (isDraw) {
                  SetEraseMode(TRUE);/*擦除前一个*/
                  DrawCenteredCircle(ccx, ccy, radius);
				  ccx += mx - omx;
				  ccy += my - omy;
				  omx = mx;
				  omy = my;
				  SetEraseMode(FALSE);/*画新的*/
                  DrawCenteredCircle(ccx, ccy, radius);
			  } else if (isChangeRadius) {
                  SetEraseMode(TRUE);/*擦除前一个*/
                  DrawCenteredCircle(ccx, ccy, radius);
				  radius += mx - omx;
				  omx = mx;
				  omy = my;
				  SetEraseMode(FALSE);/*画新的*/
                  DrawCenteredCircle(ccx, ccy, radius);
			  }
              break;
     }	
}
