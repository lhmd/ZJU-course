#ifndef _DISPLAY_LOGIN_H
#define _DISPLAY_LOGIN_H
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
void display1();//登录界面
void WriteName(char name1[],char name2[]);//将用户名写入文件
char* getname1();//传输name1
char* getname1();//传输name2
/*
 * The followings are imGUI functions
 */
void CharEventProcess(char ch);// 用户的字符事件响应函数
void MouseEventProcess(int x, int y, int button, int event);// 用户的鼠标事件响应函数
#endif
