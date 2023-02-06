//===========================================================================
//
//  版权所有者： 刘新国，浙江大学计算机科学与技术学院
//                       CAD&CG国家重点实验室
//               xgliu@cad.zju.edu.cn
//  
//  初次创建：2018年4月8日，用于<<程序设计专题>>课程教学
//            演示内容：
//            1. 汉诺塔问题求解
//            2. libgraphics动画
//            3. 基于堆栈的递归实现
//            
//
//===========================================================================

#include <stdio.h>
#include <stdlib.h>

#include "hanoi.h"

#define MAX_STACK   MAX_DISC_COUNT*3

static struct {
	int n, a, b;
} stack[MAX_STACK];

static int stack_height = 0;

int pop(int *n, int *a, int *b)
{
	if( stack_height<=0 ) 
		return 0; // stack is empty
	stack_height --;
	*n = stack[stack_height].n;
	*a = stack[stack_height].a;
	*b = stack[stack_height].b;
	return 1;
}

int push(int n, int a, int b)
{
	if( stack_height >= MAX_STACK ) {
		printf("Stack is full\n");
		HandleError(0); // 简单处理
	}
	stack[stack_height].n = n;
	stack[stack_height].a = a;
	stack[stack_height].b = b;
	stack_height ++;
	return 1;
}

void ResetMoveStack(int n, int a, int b)
{
	stack_height = 0;
	push(n,a,b);
}

int FindNextMove()
{
	int n, a, b, c;

	// 检查是否有disc在移动
	if( g_flying_disc.id>=0 ) {
		printf("A disc is beeing moved\n");
		printf("You can only move one disc at a time\n");
		HandleError(0); // 简单处理
	}

	while ( pop(&n, &a, &b) ) {  // 弹出一个规模为n的汉诺塔任务

		if( n<0 ) {
			printf("There must be some error\n");
			HandleError(0); // 简单处理
		}
		
		// 只有1个disc，那么接下来就是去挪它
		if( n==1 ) { 
			int Na = g_towers[a].discNum;
			if( Na<=0 ) {
				printf("There must be some error in tower[%d]\n", a);
				HandleError(0); // 简单处理
			}
			g_flying_disc.id = g_towers[a].discList[Na-1];
			g_flying_disc.towerFrom = a;
			g_flying_disc.towerTo = b;
			g_flying_disc.time = 0;
			return 1;
		}
		
		// 三个塔的id是0, 1, 2，和为3
		// 所以a-->b的过渡塔id是：3 - a - b
		c = 3 - a - b;
		
		//
		// 1. 先将 n-1 个铁盘 a--> c（用b过渡）
		// 2. 再将最下面的 1 个铁盘 a-->b
		// 3. 最后将 n-1 个铁盘 c-->b（用a过渡）
		//
		// 注意：将任务3，2，1依次放到stack中
		//       因为在stack中，先进后出
		//
		push(n-1, c, b);
		push(1, a, b);
		push(n-1, a, c);
	}

	return 0; // no more move task
}