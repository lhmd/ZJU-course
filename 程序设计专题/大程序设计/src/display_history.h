#ifndef _DISPLAY_HISTORY_H
#define _DISPLAY_HISTORY_H
#include "graphics.h"
#include "extgraph.h"
#include "genlib.h"
#include "simpio.h"
#include "random.h"
#include "strlib.h"
#include "conio.h"
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <windows.h>
#include <olectl.h>
#include <stdio.h>
#include <mmsystem.h>
#include <wingdi.h>
#include <ole2.h>
#include <ocidl.h>
#include <winuser.h>
#include "linkedlist.h"
#include <math.h>
#include "imgui.h" 

/*
 * The following constants control the sizes of the
 * windows.
 */
#define WindowWidth 20.0
#define WindowHeight 14.0

/*
 * The followings are my functions
 */
void display5();//历史对局与棋谱界面 
void openhistory();//显示对应棋局 
void readdata();//读数据 
/*
 * The followings are imGUI functions
 */
void MouseEventProcess(int x, int y, int button, int event);// 用户的鼠标事件响应函数
#endif
