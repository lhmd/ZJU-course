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

#define PAI 3.14159

linkedlistADT SnowList; /*链表各结点依次存放各线段的角度*/
static double length;

static void writelink(linkedlistADT SnowList, int n);
void DwawPolarLine(double r, double theta);
void kochsnow(int n);

double direction;//全局变量：方向

void Main(){
    InitGraphics();
	double h=GetWindowHeight();
	double w=GetWindowWidth();
	length=w/2;
	InitConsole();
	int n;
	printf("输入阶数\n"); 
	n = GetInteger();
	FreeConsole();

//	init
	MovePen(w/2.0-length/2.0 , h/2-length/2.0*tan(30.0/180*PAI));
	length = length / pow(3.0, (float)n);
//	初始化链表
	SnowList = New(linkedlistADT);
    SnowList->dataptr = NULL;
	SnowList->next = NULL; 
	linkedlistADT p=SnowList;
//	递归写链表
	writelink(SnowList,n);
//	画图
	p=p->next;
	while(p!=NULL){
		DrawPolarLine(length,*((double *)(p->dataptr)));
		p=p->next;
	}
}

static void writelink(linkedlistADT SnowList, int n){
	double angle;
	if(!n){//n=0时抹平每个线段中间的部分 
		double *p;
		p=(double *)malloc(sizeof(double));
		*p=0;
		InsertNode(SnowList,NULL,p);
		p=(double *)malloc(sizeof(double));
		*p=120;
		InsertNode(SnowList,NULL,p);
		p=(double *)malloc(sizeof(double));
		*p=240;
		InsertNode(SnowList,NULL,p);
	}
	else{//n!=0时在每一个链表节点之间加入三个新的节点 
		writelink(SnowList,n-1);
		linkedlistADT pre;
		double *ptheta, theta;
		pre = SnowList;
	    pre = pre->next;
		while (pre != NULL) {
			theta = *(double *)(pre->dataptr);
			ptheta = (double *)malloc(sizeof(double));
			*ptheta = theta - 60;
	        InsertNode(SnowList, pre, (void *)ptheta);
			pre = pre->next; 
			ptheta = (double *)malloc(sizeof(double));
			*ptheta = theta + 60; 
	        InsertNode(SnowList, pre, (void *)ptheta); 
			pre = pre->next; 
			ptheta = (double *)malloc(sizeof(double));
			*ptheta = theta;
	        InsertNode(SnowList, pre, (void *)ptheta); 
			pre = pre->next; 
			pre = pre->next; 
		}
	}
}

void DrawPolarLine(double r, double theta)
{
	double radians;
	radians = theta / 180 * PAI;
	DrawLine(r * cos(radians), r * sin(radians));
}


