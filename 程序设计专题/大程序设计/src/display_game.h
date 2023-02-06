#ifndef _DISPLAY_GAME_H
#define _DISPLAY_GAME_H
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
#include <windows.h>
#pragma  comment (lib,"Winmm.lib") //使用音乐播放库


/*
 * The following constants control the sizes of the
 * windows.
 */
#define WindowWidth 20.0
#define WindowHeight 14.0
#define timer_interval 1000
#define time_limit 45

/*
 * The followings are my functions
 */
void display6();//游戏界面
void drawMap();//画棋盘
void drawChess(double px, double py, int button, int event);//棋子函数
int rule(int pi, int pj);//判断走法是否可行
void drawTimer();//倒计时模块
void record(int Record);//传入录制情况
void drawPiece();//画棋子
void movechess(int px,int py,int nx,int ny);//接收棋子移动信息
void retractit(int i,int j);//记录上一步行棋
void doretract();//悔棋
/*
 * The followings are imGUI functions
 */
void MouseEventProcess(int x, int y, int button, int event);// 用户的鼠标事件响应函数
void TimerEventProcess(int timerID);// 用户的计时器时间响应函数
void KeyboardEventProcess(int key, int event);// 用户的键盘事件响应函数
#endif
