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

Tower      g_towers[3];   // 3个铁塔
int        g_disc_count;  // 铁盘数量
FlyingDisc g_flying_disc; // 移动的铁盘

void ResetMoveStack(int n, int a, int b);

// 初始化汉诺塔问题
// n - number of discs
void InitTower(int n)
{
	int j;

	if( n<1 ) n = 1;

	if( n > MAX_DISC_COUNT ) {
		printf("Too many disc to handle\n");
		HandleError(0); // 简单处理
	}

	g_disc_count = n;
	// 0号铁塔放n个铁盘
	g_towers[0].discNum = n;
	for( j = 0; j<n; j++ ) {
		// 铁盘j保存到ower 0中
		g_towers[0].discList[j] = j; 
	}
	// 1号和2号铁塔无铁盘
	g_towers[1].discNum = 0;
	g_towers[2].discNum = 0;
	// 将n个铁盘从0号铁塔挪到1号铁塔
	ResetMoveStack(n,0,1); 
	// 没有正在移动的铁盘
	g_flying_disc.id = -1;
}


int OneStepHanoi()
{
	if( g_flying_disc.id >=0 ) {
		// 正在移动一个铁盘
		g_flying_disc.time += GetHanoiTimeElapseSpeed();
		if( g_flying_disc.time>=1 ) // 该铁盘到达目的地了
		{
			int tt = g_flying_disc.towerTo;
			// 将这个铁盘保存到tower上
			g_towers[tt].discList[ g_towers[tt].discNum ++ ] = g_flying_disc.id; 
			g_flying_disc.id = -1; // 清除移动盘
		}
		return 1;
	}
	else if( FindNextMove() ) // 还需要继续移动
	{
		// FindNextMove函数已经将移动任务保存在g_flying_disc中了
		int ft = g_flying_disc.towerFrom;
		// 从tower[ft]上移除
		g_towers[ft].discNum --; 
		return 1;
	}
	// 汉诺塔任务结束
	return 0;	
}


static double time_elapse_speed = 0.02;

void SetHanoiTimeElapseSpeed( double speed )
{
	time_elapse_speed = speed;
}
double GetHanoiTimeElapseSpeed()
{
	return time_elapse_speed;
}


void HandleError(int errorCode)
{
	exit(errorCode);
}
