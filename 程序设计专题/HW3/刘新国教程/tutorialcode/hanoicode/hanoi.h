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

#ifndef __hanoi_h______________________
#define __hanoi_h______________________

#define MAX_DISC_COUNT   30

// 汉诺塔
typedef struct {
	int discList[MAX_DISC_COUNT]; // 塔上的盘子
	int discNum;                  // 盘子的个数
} Tower;

typedef struct {
	int id;
	int towerFrom;
	int towerTo;
	double time;
} FlyingDisc;


extern Tower      g_towers[3];   // 3个铁塔
extern int        g_disc_count;  // 铁盘数量
extern FlyingDisc g_flying_disc; // 移动的铁盘

void HandleError(int errorCode); // 一个出错处理函数

void InitTower(int n); // 初始化铁塔
int  OneStepHanoi();   // 更新Hanoi动画
int  FindNextMove();   // 确定下一个移动的disc
// 将铁塔和铁盘显示在给定大小的窗口中
//  winwidth   - 窗口宽度
//  winheight  - 窗口高度
void DrawHanoi(double winwidth, double winheight);
// 设置时间流逝的速度，速度越大，动画越快
void SetHanoiTimeElapseSpeed( double speed );
// 查询时间流逝的速度
double GetHanoiTimeElapseSpeed();

#endif // ifndef __hanoi_h______________________
