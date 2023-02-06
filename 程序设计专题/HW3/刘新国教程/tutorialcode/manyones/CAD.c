#include "graphics.h"
#include "extgraph.h"
#include "genlib.h"
#include "simpio.h"
#include "random.h"
#include "strlib.h"
#include "conio.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stddef.h>

#include <windows.h>
#include <olectl.h>
#include <mmsystem.h>
#include <wingdi.h>
#include <ole2.h>
#include <ocidl.h>
#include <winuser.h>

#include "linkedlist.h"

#define NLIST     4
#define LINE      0
#define RECT      1
#define ELLIPSE   2
#define STRING    3

#define SYSCOLOR "Red"  /*默认绘图颜色*/

#define CURSOR "_"          /*光标符号*/
#define CURSOR_BLINK  1     /*光标闪烁定时器事件标志号*/
const int timerseconds = 500; /*光标闪烁周期ms*/
bool isCursorBlink = FALSE;  /*光标是否闪烁*/ 

void KeyboardEventProcess(int key,int event);/*键盘消息回调函数*/
void CharEventProcess(char c);/*字符消息回调函数*/
void MouseEventProcess(int x, int y, int button, int event);/*鼠标消息回调函数*/
void TimerEventProcess(int timerID);/*定时器消息回调函数*/

typedef struct {/*直线类型*/
	double x1, y1;/*第一个点坐标*/
    double x2, y2;/*第二个点坐标*/
    int PenSize; /*粗细*/
    string color; /*颜色*/
    bool isSelected; /*选中*/ 
} *LineT;

typedef struct {/*矩形类型*/
	double x1, y1;/*左下角坐标*/
    double x2, y2;/*右上角坐标*/
    int PenSize; /*粗细*/
    string color; /*颜色*/
    bool isSelected; /*选中*/ 
} *RectT;

typedef struct {/*椭圆类型*/
    double cx, cy;/*圆心*/
    double rx, ry;/*长短半径*/
    int PenSize; /*粗细*/
    string color; /*颜色*/
    bool isSelected; /*选中*/ 
} *EllipseT;

typedef struct {/*文本类型*/
	string text;/*文本指针*/
	double x, y;/*文本显示起始位置坐标*/
    int PointSize; /*文字大小*/
    string color; /*颜色*/
    bool isSelected; /*选中*/ 
    int curPos; /*光标位置*/
    bool isDisplayed; /*光标是否处于显示状态*/ 
} *TextT;

linkedlistADT list[NLIST]={NULL, NULL, NULL, NULL};/*四类图形元素链表指针*/
double minDistance[NLIST]={100000000.0, 1000000000.0, 1000000000.0, 1000000000.0};
int curList = LINE; /*当前链表序号*/
LineT curLine = NULL;/*直线链表的当前对象指针*/
RectT curRect = NULL;/*矩形链表的当前对象指针*/
EllipseT curEllipse = NULL;/*椭圆链表的当前对象指针*/
TextT curText = NULL;/*文本链表的当前对象指针*/

bool isSelected = FALSE; /*图形元素选中状态*/ 

#define TEXTLEN  100
static TextT tptr; /*当前编辑文本对象指针*/
static bool inText = FALSE; /*是否处于当前文本编辑状态*/
static char textbuf[TEXTLEN+1];/*当前文本缓冲区*/

/*椭圆处理函数*/
void DrawCenteredEllipse(void *ellipse);/*画椭圆*/
bool EllipseEqual(void *ellipse1, void *ellipse2);/*比较两个椭圆相等*/
EllipseT SelectNearestNodeE(linkedlistADT list, double mx, double my);/*选择靠(mx,my)最近的结点*/

/*直线处理函数*/
void DrawLineD(void *line);
bool LineEqual(void *line1, void *line2);
LineT SelectNearestNodeL(linkedlistADT list, double mx, double my);

/*矩形处理函数*/
void DrawRect(void *rect);
bool RectEqual(void *rect1, void *rect2);
RectT SelectNearestNodeR(linkedlistADT list, double mx, double my);

/*文本处理函数*/
void DrawTextT(void *text); /*显示文本*/
bool TextEqual(void *text1, void *text2);/*比较两个文本是否相同*/
TextT SelectNearestNodeT(linkedlistADT list, double mx, double my);
void InsertCharToString(string str, int pos, char c);/*将字符c插入到字符串str的pos位置*/
void DeleteCharFromString(string str, int pos);/*删除字符串str的pos位置字符*/
void DrawCursor(string str, int curPos, double startx, double starty);/*显示文本光标*/

void PickNearestNode(linkedlistADT list[], double mx, double my);/*选择靠(mx,my)最近结点*/
void TraverseAllList();/*刷新所有图形对象*/



// 清屏函数，provided in libgraphics
void DisplayClear(void); 
// 计时器启动函数，provided in libgraphics
void startTimer(int id,int timeinterval);
void cancelTimer(int id);

void Main() /*仅初始化执行一次*/
{
	int i;

    InitGraphics();/*图形初始化*/
	Randomize();/*随机函数初始化*/
	registerKeyboardEvent(KeyboardEventProcess);/*注册键盘消息回调函数*/
	registerCharEvent(CharEventProcess);/*注册字符消息回调函数*/
	registerMouseEvent(MouseEventProcess);/*注册鼠标消息回调函数*/
	registerTimerEvent(TimerEventProcess);/*注册定时器消息回调函数*/
	
	SetPenColor(SYSCOLOR); 
    SetPenSize(1);

	for (i = 0; i < NLIST; i++) list[i] = NewLinkedList();
}

void KeyboardEventProcess(int key,int event)/*每当产生键盘消息，都要执行*/
{
	 LineT lptr;
	 RectT rptr;
	 EllipseT eptr;
	 double x1, y1, x2, y2;

     switch (event) {
	 	case KEY_DOWN:
			 switch (key) {
			     case VK_F1:/*F1: 随机生成直线*/
					 lptr = GetBlock(sizeof(*lptr));
					 lptr->x1 = RandomReal(0.0, GetWindowWidth());
					 lptr->y1 = RandomReal(0.0, GetWindowHeight());
					 lptr->x2 = RandomReal(0.0, GetWindowWidth());
					 lptr->y2 = RandomReal(0.0, GetWindowHeight());
					 lptr->PenSize = GetPenSize();
					 lptr->color = GetPenColor();
					 lptr->isSelected = FALSE;
					 InsertNode(list[LINE], NULL, lptr);
					 DrawLineD(lptr);
                     break;
			     case VK_F2:/*F2: 随机生成矩形*/
					 rptr = GetBlock(sizeof(*rptr));
					 x1 = RandomReal(0.0, GetWindowWidth());
					 y1 = RandomReal(0.0, GetWindowHeight());
					 x2 = RandomReal(0.0, GetWindowWidth());
					 y2 = RandomReal(0.0, GetWindowHeight());
					 if (x1 < x2) {
                         rptr->x1 = x1;
                         rptr->x2 = x2;
					 } else {
                         rptr->x1 = x2;
                         rptr->x2 = x1;
					 }
					 if (y1 < y2) {
                         rptr->y1 = y1;
                         rptr->y2 = y2;
					 } else {
                         rptr->y1 = y2;
                         rptr->y2 = y1;
					 }
					 rptr->PenSize = GetPenSize();
					 rptr->color = GetPenColor();
					 rptr->isSelected = FALSE;
					 InsertNode(list[RECT], NULL, rptr);
					 DrawRect(rptr);
                     break;
			     case VK_F3:/*F3: 随机生成椭圆*/
					 eptr = GetBlock(sizeof(*eptr));
					 eptr->cx = RandomReal(1.0, GetWindowWidth()-1.0);
					 eptr->cy = RandomReal(1.0, GetWindowHeight()-1.0);
					 eptr->rx = RandomReal(0.5, 3.0);
					 eptr->ry = RandomReal(0.5, 2.0);
					 eptr->PenSize = GetPenSize();
					 eptr->color = GetPenColor();
					 eptr->isSelected = FALSE;
					 InsertNode(list[ELLIPSE], NULL, eptr);
					 DrawCenteredEllipse(eptr);
                     break;
			     case VK_F4:/*F4: 随机生成空的文本对象*/
			         if (inText) break;/*若已处于文本编辑状态，则不生成新的空文本*/
					 inText = TRUE; /*进入新的文本行输入状态*/
					 tptr = GetBlock(sizeof(*tptr));
					 tptr->x = RandomReal(1.0, GetWindowWidth()-1.0);
                     tptr->y = RandomReal(1.0, GetWindowHeight()-1.0);
					 MovePen(tptr->x, tptr->y);/*文本显示起始位置*/
	 	   			 DrawTextString(CURSOR);/*显示光标*/
                     textbuf[0] = '\0'; /*形成字符串*/
                     tptr->PointSize = GetPointSize();
                     tptr->color = GetPenColor();
                     tptr->isSelected = FALSE;
                     tptr->curPos = 0; /*设置当前光标位置*/
                     tptr->isDisplayed = TRUE; /*设置光标闪烁标志*/ 
                     startTimer(CURSOR_BLINK, timerseconds);/*光标闪烁定时器触发*/
                     isCursorBlink = TRUE;/*设置光标闪烁标志*/
                     break;
                 case VK_F5: /*编辑已有文本行*/ 
					if (!isSelected || curList != STRING) break;/*当前不处于文本行编辑状态*/
					if (inText) break;/*已处于文本行编辑状态*/
					inText = TRUE;/*设置文本编辑状态*/
					tptr = curText;/*取当前选中的文本对象*/
					strcpy(textbuf, tptr->text);/*将当前文本字符串拷贝到临时文本缓冲区以备编辑*/
					DeleteNode(list[STRING], curText, TextEqual);/*从当前文本链表中删除该文本对象*/
					SetPenColor(tptr->color); /*设置选择文本的颜色*/
					DrawCursor(textbuf, tptr->curPos, tptr->x, tptr->y);/*显示当前文本光标*/
					tptr->isDisplayed = TRUE; /*设置当前文本光标闪烁标志*/ 
            		startTimer(CURSOR_BLINK, timerseconds);/*光标闪烁定时器触发*/
            		isCursorBlink = TRUE; /*设置光标闪烁状态*/
                    break;
                 case VK_LEFT: /*左移键*/
                 	if (!inText) break;/*不处于文本编辑状态*/
                    SetEraseMode(TRUE);
	 	   			MovePen(tptr->x, tptr->y);
	 	   			DrawTextString(textbuf);/*擦除当前文本*/
					DrawCursor(textbuf, tptr->curPos, tptr->x, tptr->y); /*擦除光标*/
                    if (tptr->curPos>0) tptr->curPos--;/*左移光标一个字符位置*/
                    SetEraseMode(FALSE);
	 	   			MovePen(tptr->x, tptr->y);
	 	   			DrawTextString(textbuf);/*重新显示当前文本*/
					DrawCursor(textbuf, tptr->curPos, tptr->x, tptr->y); /*显示光标*/
					break;                     
                 case VK_RIGHT: /*右移键*/
                 	if (!inText) break;/*不处于文本编辑状态*/
                    SetEraseMode(TRUE);
	 	   			MovePen(tptr->x, tptr->y);
	 	   			DrawTextString(textbuf);/*擦除当前文本*/
					DrawCursor(textbuf, tptr->curPos, tptr->x, tptr->y); /*擦除光标*/
                    if (tptr->curPos<strlen(textbuf)) tptr->curPos++;/*右移光标一个字符位置*/
                    SetEraseMode(FALSE);
	 	   			MovePen(tptr->x, tptr->y);
	 	   			DrawTextString(textbuf);/*重新显示当前文本*/
					DrawCursor(textbuf, tptr->curPos, tptr->x, tptr->y); /*显示光标*/
				    break;                     
			     case VK_DELETE:/*DELETE*/
				    if (inText) { /*若处于文本编辑状态，则删除当前字符*/
						SetEraseMode(TRUE);
						MovePen(tptr->x, tptr->y);
						DrawTextString(textbuf);
						DrawCursor(textbuf, tptr->curPos, tptr->x, tptr->y);/*擦除当前光标*/
						DeleteCharFromString(textbuf, tptr->curPos);/*删除当前位置的字符*/
				 	   	SetEraseMode(FALSE);
				 	   	TraverseAllList();/*刷新所有图形元素*/
				 	   	MovePen(tptr->x, tptr->y);
				 	   	DrawTextString(textbuf);
				 	   	DrawCursor(textbuf, tptr->curPos, tptr->x, tptr->y);/*显示当前光标*/
				    	break;	
				    }
				    if (!isSelected) break;
				    /*下面删除选中的图形元素*/
			  		SetEraseMode(TRUE);
               		TraverseAllList();
		         	switch (curList) {
		         	  	case LINE:
					 		DeleteNode(list[LINE], curLine, LineEqual);
		         	  		break;
		         	  	case RECT:
		         	  		DeleteNode(list[RECT], curRect, RectEqual);
		         	  		break;
		         	  	case ELLIPSE:
					 		DeleteNode(list[ELLIPSE], curEllipse, EllipseEqual);
		         	  		break;
		         	  	case STRING:
		         	  		DeleteNode(list[STRING], curText, TextEqual);
		         	  		break;
		         	}
				    SetEraseMode(FALSE);
		         	TraverseAllList();
		         	isSelected = FALSE; 
                    break;
                case VK_ESCAPE:/*退出图形元素选中状态*/
                	  if (!isSelected) break;/*不处于选中状态则不处理*/
		         	  switch (curList) {
		         	  	case LINE:
		         	  		curLine->isSelected = FALSE;
		         	  		curLine->color = GetPenColor();
		         	  		break;
		         	  	case RECT:
		         	  		curRect->isSelected = FALSE;
		         	  		curRect->color = GetPenColor();
		         	  		break;
		         	  	case ELLIPSE:
		         	  		curEllipse->isSelected = FALSE;
		         	  		curEllipse->color = GetPenColor();
		         	  		break;
		         	  	case STRING:
		         	  		curText->isSelected = FALSE;
		         	  		curText->color = GetPenColor();
		         	  		break;
		         	  }
		         	  isSelected = FALSE; 
		         	  TraverseAllList();
                	  break;
			 }
			 break;
		case KEY_UP:
			 break;
	 }	 
}

void CharEventProcess(char c)
{
	int len;

	if (!inText) return;
    switch (c) {
    	case 27: /*ESC*/
    	case '\r':  /* 注意：回车在这里返回的字符是'\r'，不是'\n'*/
			inText = FALSE;/*退出当前文本输入*/
           	SetEraseMode(TRUE);
	 	   	MovePen(tptr->x, tptr->y);
	 	   	DrawTextString(textbuf);
			DrawCursor(textbuf, tptr->curPos, tptr->x, tptr->y);/*擦除当前光标*/
			TraverseAllList();
			tptr->isDisplayed = FALSE;
			tptr->text = CopyString(textbuf);/*申请字符串空间*/
           	InsertNode(list[STRING], NULL, tptr);
           	SetEraseMode(FALSE);
			TraverseAllList();
			cancelTimer(CURSOR_BLINK);/*注销光标闪烁定时器*/
			isCursorBlink = FALSE;
			SetPenColor(SYSCOLOR);
			break;
 	    case '\b':/*BACKSPACE*/
 	    	if ((len = strlen(textbuf)) == 0) break;
			SetEraseMode(TRUE);
			MovePen(tptr->x, tptr->y);
			DrawTextString(textbuf);
			DrawCursor(textbuf, tptr->curPos, tptr->x, tptr->y);/*擦除当前光标*/
			DeleteCharFromString(textbuf, tptr->curPos-1);
	 	   	SetEraseMode(FALSE);
	 	   	TraverseAllList();
	 	   	MovePen(tptr->x, tptr->y);
	 	   	DrawTextString(textbuf);
	 	   	if (tptr->curPos > 0) tptr->curPos--;
	 	   	DrawCursor(textbuf, tptr->curPos, tptr->x, tptr->y);/*显示当前光标*/
 	    	break;
    	default:
    		if ((len = strlen(textbuf)) >= TEXTLEN) break; 
			SetEraseMode(TRUE);
			MovePen(tptr->x, tptr->y);
			DrawTextString(textbuf);
			DrawCursor(textbuf, tptr->curPos, tptr->x, tptr->y);/*擦除当前光标*/
			InsertCharToString(textbuf, tptr->curPos, c);/*将当前字符插入到光标位置*/
	 	   	SetEraseMode(FALSE);
	 	   	MovePen(tptr->x, tptr->y);
	 	   	DrawTextString(textbuf);
	 	   	tptr->curPos++; 
	 	   	DrawCursor(textbuf, tptr->curPos, tptr->x, tptr->y);/*显示当前光标*/
			break;
    }
}

void MouseEventProcess(int x, int y, int button, int event)
{
	static bool isMove = FALSE; /*移动标志*/
	static bool isChangeSize = FALSE; /*缩放标志*/ 
 	static double omx = 0.0, omy = 0.0;/*前一鼠标坐标*/
    double mx, my;/*当前鼠标坐标*/
	double x1, y1, x2, y2, dx, dy;
	 
 	mx = ScaleXInches(x);/*pixels --> inches*/
	my = ScaleYInches(y);/*pixels --> inches*/
 
	switch (event) {
		case BUTTON_DOWN:
			if (isSelected) { /*已是选中状态*/
       	    	omx = mx;
			  	omy = my;
			   	if (button == LEFT_BUTTON) { /*左键按下，进入移动状态*/
         	    	isMove = TRUE;
         	    } else if (button == RIGHT_BUTTON) {/*右键键按下，进入缩放状态*/
         	    	isChangeSize = TRUE;
         	    }
				break;
         	} 
         	PickNearestNode(list, mx, my);/*选择对象*/ 
         	switch (curList) {
         	  	case LINE:
					if( curLine ) {
	         	  		curLine->isSelected = TRUE;
		     	  		curLine->color = CopyString("GREEN");
					}
         	  		break;
         	  	case RECT:
         	  		curRect->isSelected = TRUE;
         	  		curRect->color = CopyString("GREEN");
         	  		break;
         	  	case ELLIPSE:
         	  		curEllipse->isSelected = TRUE;
         	  		curEllipse->color = CopyString("GREEN");
         	  		break;
         	  	case STRING:
         	  		curText->isSelected = TRUE;
         	  		curText->color = CopyString("GREEN");
         	  		break;
         	  }
         	  isSelected = TRUE;
         	  TraverseAllList();
              break;
		case BUTTON_DOUBLECLICK:
			break;
		case BUTTON_UP:
        	isMove = FALSE; /*退出移动状态*/
         	isChangeSize = FALSE;/*退出缩放状态*/ 
            break;
		case MOUSEMOVE:
			if (isSelected && (isMove || isChangeSize)) { /*选中状态下，移动或缩放*/ 
			  	SetEraseMode(TRUE);
               	TraverseAllList();
               	dx = mx - omx;
               	dy = my - omy;
				if (isMove) { /*移动*/
					switch (curList){
						case LINE:
					  		curLine->x1 += dx;
					  		curLine->y1 += dy;
							curLine->x2 += dx;
							curLine->y2 += dy;
							break;
		 		    	case RECT:
					  		x1 = curRect->x1 + dx;
					  		y1 = curRect->y1 + dy;
					  		x2 = curRect->x2 + dx;
					  		y2 = curRect->y2 + dy;
					  		if (x1 < x2) {
                         		curRect->x1 = x1;
                         		curRect->x2 = x2;
					  		} else {
                         		curRect->x1 = x2;
                         		curRect->x2 = x1;
					  		}
					  		if (y1 < y2) {
                         		curRect->y1 = y1;
                         		curRect->y2 = y2;
					  		} else {
                         		curRect->y1 = y2;
                         		curRect->y2 = y1;
					  		}
					  		break;
		 		  		case ELLIPSE:
					  		curEllipse->cx += dx;
					  		curEllipse->cy += dy;
					  		break;
		 		  		case STRING:
					  		curText->x += dx;
					  		curText->y += dy;
					  		break;
				  	}
			  	} else if (isChangeSize) {/*缩放*/
					switch (curList){
						case LINE:
							if (fabs(omx-curLine->x1)+fabs(omy-curLine->y1) <
							    fabs(omx-curLine->x2)+fabs(omy-curLine->y2)) {
					  			curLine->x1 += dx;
					  			curLine->y1 += dy;
						    } else {
   								curLine->x2 += dx;
								curLine->y2 += dy;
						    }
							break;
		 		    	case RECT:
		 		    		if (fabs(omx-curRect->x1) < fabs(omx-curRect->x2)) {
		 		    			curRect->x1 += dx;
		 		    		} else {
		 		    			curRect->x2 += dx;
		 		    		}
		 		    		if (fabs(omy-curRect->y1) < fabs(omy-curRect->y2)) {
		 		    			curRect->y1 += dy;
		 		    		} else {
		 		    			curRect->y2 += dy;
		 		    		}
					  		break;
		 		  		case ELLIPSE:
					  		curEllipse->rx += dx;
					  		curEllipse->ry += dy;
					  		break;
		 		  		case STRING:
		 		  			//curText->PointSize + (dx>0?1:-1);
					  		break;
				  	}
				}
				omx = mx;
				omy = my;
				SetEraseMode(FALSE);
				TraverseAllList();
			}
            break;
    }	
}

void TimerEventProcess(int timerID)
{
	switch (timerID) {
		case CURSOR_BLINK: /*100ms光标闪烁定时器*/
			SetEraseMode(!tptr->isDisplayed);
			DrawCursor(textbuf, tptr->curPos, tptr->x, tptr->y);
			SetEraseMode(FALSE);
			MovePen(tptr->x, tptr->y);
			DrawTextString(textbuf);
			tptr->isDisplayed=!tptr->isDisplayed;
			break;
	    default:
			break;
	}
}

/*for Line*/
void DrawLineD(void *line)
{
	LineT lptr = (LineT)line;
	int pensize = GetPenSize();/*保存当前系统笔画粗细*/
	string color = GetPenColor();/*保存当前系统颜色*/

	SetPenSize(lptr->PenSize);/*设置粗细*/
	SetPenColor(lptr->color);/*设置颜色*/
	MovePen(lptr->x1, lptr->y1);
	DrawLine(lptr->x2-lptr->x1,lptr->y2-lptr->y1);
	SetPenSize(pensize); /*恢复粗细*/
	SetPenColor(color);/*恢复颜色*/
}

bool LineEqual(void *line1, void *line2)
{
	LineT lptr1 = (LineT)line1, lptr2 = (LineT)line2;

	return lptr1->x1 == lptr2->x1 && lptr1->y1 == lptr2->y1 &&
           lptr1->x2 == lptr2->x2 && lptr1->y2 == lptr2->y2;
}

double distLine(double x, double y, LineT line)
{
	double x0, y0;

	x0 = (line->x1 + line->x2)/2;
	y0 = (line->y1 + line->y2)/2;
	return fabs(x-x0) + fabs(y-y0);
}

LineT SelectNearestNodeL(linkedlistADT list, double mx, double my)
{
	linkedlistADT nearestnode = NULL, ptr;
	double mindistance, dist;

	ptr = NextNode(list, list);
	if (ptr == NULL) return NULL;
    nearestnode = ptr;
  	mindistance = distLine(mx, my, (LineT)NodeObj(list, ptr));
	while (NextNode(list, ptr) != NULL) {
		ptr = NextNode(list, ptr);
  	    dist = distLine(mx, my, (LineT)NodeObj(list, ptr));
		if (dist < mindistance) {
			nearestnode = ptr;
			mindistance = dist;
		}
	}
	minDistance[LINE] = mindistance;

	return (LineT)NodeObj(list, nearestnode);
}

/*for rectangle */
void DrawRect(void *rect)
{
	RectT r = (RectT)rect;
	int pensize = GetPenSize();/*保存当前系统笔画粗细*/
	string color = GetPenColor();/*保存当前系统颜色*/

	SetPenSize(r->PenSize);/*设置粗细*/
	SetPenColor(r->color);/*设置颜色*/
	MovePen(r->x1, r->y1);
	DrawLine(r->x2-r->x1, 0);
	DrawLine(0, r->y2-r->y1);
	DrawLine(r->x1-r->x2, 0);
	DrawLine(0, r->y1-r->y2);
	SetPenSize(pensize); /*恢复粗细*/
	SetPenColor(color);/*恢复颜色*/
}

bool RectEqual(void *rect1, void *rect2)
{
	RectT r1, r2;

	r1 = (RectT)rect1;
	r2 = (RectT)rect2;
	return r1->x1 == r2->x1 && r1->y1 == r2->y1 &&
		   r1->x2 == r2->x2 && r1->y2 == r2->y2;
}

double distRect(double x, double y, RectT rect)
{
	double x0, y0;

	x0 = (rect->x1 + rect->x2)/2;
	y0 = (rect->y1 + rect->y2)/2;
	return fabs(x-x0)+fabs(y-y0);
}

RectT SelectNearestNodeR(linkedlistADT list, double mx, double my)
{
	linkedlistADT nearestnode = NULL, ptr;
	double mindistance, dist;

	ptr = NextNode(list, list);
	if (ptr == NULL) return NULL;
    nearestnode = ptr;
  	mindistance = distRect(mx, my, (RectT)NodeObj(list, ptr));
	while (NextNode(list, ptr) != NULL) {
		ptr = NextNode(list, ptr);
  	    dist = distRect(mx, my, (RectT)NodeObj(list, ptr));
		if (dist < mindistance) {
			nearestnode = ptr;
			mindistance = dist;
		}
	}
	minDistance[RECT] = mindistance;

	return (RectT)NodeObj(list, nearestnode);
}

/*For ellipse*/
void DrawCenteredEllipse(void *ellipse)
{
	EllipseT eptr = (EllipseT)ellipse;
	int pensize = GetPenSize();
	string color = GetPenColor();

	SetPenSize(eptr->PenSize);
	SetPenColor(eptr->color);
	MovePen(eptr->cx + eptr->rx, eptr->cy);
    DrawEllipticalArc(eptr->rx, eptr->ry, 0.0, 360.0);
    SetPenSize(pensize);
    SetPenColor(color);
}

bool EllipseEqual(void *ellipse1, void *ellipse2)
{
	EllipseT eptr1 = (EllipseT)ellipse1, eptr2 = (EllipseT)ellipse2;

	return eptr1->cx == eptr2->cx && eptr1->cy == eptr2->cy &&
           eptr1->rx == eptr2->rx && eptr1->ry == eptr2->ry;

}

double distEllipse(double x, double y, EllipseT ellipse)
{
	return fabs(x-ellipse->cx) + fabs(y-ellipse->cy);
}

EllipseT SelectNearestNodeE(linkedlistADT list, double mx, double my)
{
	linkedlistADT nearestnode = NULL, ptr;
	double mindistance, dist;

	ptr = NextNode(list, list);
	if (ptr == NULL) return NULL;
    nearestnode = ptr;
	mindistance = distEllipse(mx, my, (EllipseT)NodeObj(list, ptr));
	while (NextNode(list, ptr) != NULL) {
		ptr = NextNode(list, ptr);
  	    dist = distEllipse(mx, my, (EllipseT)NodeObj(list, ptr));
		if (dist < mindistance) {
			nearestnode = ptr;
			mindistance = dist;
		}
	}
	minDistance[ELLIPSE] = mindistance;

	return (EllipseT)NodeObj(list, nearestnode);
}

/*for text*/
void DrawTextT(void *text)
{
	TextT tptr = (TextT)text;
	string color = GetPenColor();
	int pointsize = GetPointSize();
	 
	MovePen(tptr->x, tptr->y);
	SetPenColor(tptr->color);
	SetPointSize(tptr->PointSize);
    DrawTextString(tptr->text);
    SetPenColor(color);
    SetPointSize(pointsize);
}

/*画光标*/
void DrawCursor(string str, int curPos, double startx, double starty)
{
	if (curPos < 0 || curPos > strlen(str)) return;
	MovePen(startx+TextStringWidth(SubString(str, 0, curPos-1)), starty);
	DrawTextString(CURSOR);
	return;
}
 
bool TextEqual(void *text1, void *text2)
{
	TextT tptr1 = (TextT)text1, tptr2 = (TextT)text2;

	return StringEqual(tptr1->text, tptr2->text) &&
           tptr1->x == tptr2->x && tptr1->y == tptr2->y;
}

double distText(double x, double y, TextT text)
{
	return fabs(x - text->x) + fabs(y - text->y);
}

TextT SelectNearestNodeT(linkedlistADT list, double mx, double my)
{
	linkedlistADT nearestnode = NULL, ptr;
	double mindistance, dist;

	ptr = NextNode(list, list);
	if (ptr == NULL) return NULL;
    nearestnode = ptr;
	mindistance = distText(mx, my, (TextT)NodeObj(list, ptr));
	while (NextNode(list, ptr) != NULL) {
		ptr = NextNode(list, ptr);
  	    dist = distText(mx, my, (TextT)NodeObj(list, ptr));
		if (dist < mindistance) {
			nearestnode = ptr;
			mindistance = dist;
		}
	}
	minDistance[STRING] = mindistance;

	return (TextT)NodeObj(list, nearestnode);
}

/*Insert char c to the string str at the position pos*/
void InsertCharToString(string str, int pos, char c)
{
	int len;
	
	if (pos < 0 || pos >= TEXTLEN) return;
	len = strlen(str);
	*(str+len+1) = '\0';/*插入后形成字符串*/
	while (len > pos) {
		*(str+len) = *(str+len-1);
		len--;
	}	
	*(str+len) = c;
	return;
}

/*Delete the character at the pos position of string str*/
void DeleteCharFromString(string str, int pos)
{
	int len;
	
	len = strlen(str);
	if (pos < 0 || pos >= len) return;
	
	while (*(str+pos) != '\0') {
		*(str+pos) = *(str+pos+1);
		pos++; 
	}
	return;
}

/*for all*/
void PickNearestNode(linkedlistADT list[], double mx, double my)
{
	int i, minlist;

	curLine = SelectNearestNodeL(list[LINE], mx, my);
	curRect = SelectNearestNodeR(list[RECT], mx, my);
    curEllipse = SelectNearestNodeE(list[ELLIPSE], mx, my);
	curText = SelectNearestNodeT(list[STRING], mx, my);

	minlist = 0;
	for (i = 1; i < NLIST; i++) {
		if (minDistance[i] < minDistance[minlist]) minlist = i;
	}
	curList = minlist;
}

void TraverseAllList()
{
    TraverseLinkedList(list[LINE], DrawLineD);
    TraverseLinkedList(list[RECT], DrawRect);
    TraverseLinkedList(list[ELLIPSE], DrawCenteredEllipse);
    TraverseLinkedList(list[STRING], DrawTextT);
}
