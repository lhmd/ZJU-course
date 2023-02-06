#ifndef _WRITEFILE_H
#define _WRITEFILE_H
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
void newfile();//创建新文件 
void writenew(int px,int py,int nx,int ny);//写入新步骤 
void close_fn(int isClose);//游戏结束关闭记录 
#endif
