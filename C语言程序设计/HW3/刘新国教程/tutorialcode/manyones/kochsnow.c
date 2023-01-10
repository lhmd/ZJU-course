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

#define PI 3.1415926

linkedlistADT SnowList; /*链表各结点依次存放各线段的角度*/
double length;          /*初始边长（inch）*/

static void DwawPolarLine(double r, double theta); /*绘制极坐标线段*/
static void DrawKochSnowLine(void *obj); /*绘制各线段-为链表遍历函数调用定制*/
static void SplitEdges(linkedlistADT linkedlist);/*每边依次分解为四条边*/
static void KochSnow(linkedlistADT linkedlist, int n);/*递归求n阶Koch雪花各边角度*/
static void KochSnow1(linkedlistADT linkedlist, int n);/*非递归方法求n阶Koch雪花各边角度*/

void Main() /*仅初始化执行一次*/
{
	int n;

    InitGraphics();/*图形初始化*/

	SetPenColor("Red"); /*设置画笔颜色*/
    SetPenSize(1);      /*设置画笔粗细*/

	InitConsole();
	printf("Enter n: "); /*输入阶数*/
	n = GetInteger();
	printf("Enter length: ");/*输入初始边长（inch）*/
	length = GetReal();
	FreeConsole();

    /*初始三角形放在图形窗口中心位置——画笔移动到左下角顶点位置*/
	MovePen(GetWindowWidth()/2.0 - length/2.0,
            GetWindowHeight()/2 - length/2.0*tan(30.0/180.0*PI));

	length = length / pow(3.0, (float)n); /*n阶雪花最终的线段大小*/

	SnowList = NewLinkedList(); /*初始化链表*/
	KochSnow(SnowList, n);      /*递归依次生成n阶雪花各线段角度，存放于链表中*/
//	KochSnow1(SnowList, n);      /*非递归依次生成n阶雪花各线段角度，存放于链表中*/
	
    TraverseLinkedList(SnowList, DrawKochSnowLine);/*遍历链表，绘制线段*/
    FreeLinkedList(SnowList);/*删除链表并释放空间*/

}

/*绘制极坐标直线，长度r，角度theta*/
static void DrawPolarLine(double r, double theta)
{
	double radians;

	radians = theta / 180 * PI;
	DrawLine(r * cos(radians), r * sin(radians));
}

/*为TraverseLinkedList调用函数参数定制的绘制直线函数
 *obj是角度指针，length是直线长度（全局变量）
*/
static void DrawKochSnowLine(void *obj)
{
	DrawPolarLine(length, *((double *)obj));
}

/*将各边依次分裂为四边——每边角度依次为：theta, theta-60, theta+60, theta
 *其中，theta为原边的角度，也就是n-1阶存放于链表各节点中的各边角度
 */
static void SplitEdges(linkedlistADT SnowList)
{
	linkedlistADT ptr1;
	double *ptheta, theta;

	ptr1 = SnowList;   /*链表指针，即表头指针*/
    ptr1 = NextNode(SnowList, ptr1);/*表头指针的下一个结点，即第一个数据结点*/
	while (ptr1 != NULL) {
		theta = *((double *)NodeObj(SnowList, ptr1)); /*结点中原来存放的角度*/
		ptheta = GetBlock(sizeof(double));
		*ptheta = theta - 60;
        InsertNode(SnowList, ptr1, (void *)ptheta); /*插入第二个角度结点*/
		ptr1 = NextNode(SnowList, ptr1);            /*移到刚插入的结点*/
		ptheta = GetBlock(sizeof(double));
		*ptheta = theta + 60;                       
        InsertNode(SnowList, ptr1, (void *)ptheta);  /*插入第三个角度结点*/
		ptr1 = NextNode(SnowList, ptr1);             /*移到刚插入的结点*/
		ptheta = GetBlock(sizeof(double));
		*ptheta = theta;
        InsertNode(SnowList, ptr1, (void *)ptheta);  /*插入第四个角度结点*/
		ptr1 = NextNode(SnowList, ptr1);             /*移到刚插入的结点*/
		ptr1 = NextNode(SnowList, ptr1);             /*移到原来的第二个结点*/
	}
}

/*递归生成n阶Koch雪花各边角度的函数*/
static void KochSnow(linkedlistADT SnowList, int n)
{
	double *ptheta;

	if (n == 0) { /*0阶雪花即初始三角形，从左下端开始各边角度依次为0，120，240*/
		ptheta = GetBlock(sizeof(double));
		*ptheta = 0;
        InsertNode(SnowList, NULL, (void *)ptheta);
		ptheta = GetBlock(sizeof(double));
		*ptheta = 120;
        InsertNode(SnowList, NULL, (void *)ptheta);
		ptheta = GetBlock(sizeof(double));
		*ptheta = 240;
        InsertNode(SnowList, NULL, (void *)ptheta);
	} else {
		KochSnow(SnowList, n-1);/*生成第n-1阶Koch雪花各边*/
        SplitEdges(SnowList);/*生成n阶——将各边分裂成四边*/
	}
}

static void KochSnow1(linkedlistADT SnowList, int n)
{
	int i;
	double *ptheta;

	if (n < 0) return; 
	/*先生成0阶雪花即初始三角形，从左下端开始各边角度依次为0，120，240*/
	ptheta = GetBlock(sizeof(double));
	*ptheta = 0;
    InsertNode(SnowList, NULL, (void *)ptheta);
	ptheta = GetBlock(sizeof(double));
	*ptheta = 120;
    InsertNode(SnowList, NULL, (void *)ptheta);
	ptheta = GetBlock(sizeof(double));
	*ptheta = 240;
    InsertNode(SnowList, NULL, (void *)ptheta);
    /*依次分解各边，逐个生成高阶雪花各边*/
	for (i = 1; i <= n; i++) SplitEdges(SnowList);
}
