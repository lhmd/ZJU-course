//===========================================================================
//
//  版权所有者： 刘新国，浙江大学计算机科学与技术学院
//                       CAD&CG国家重点实验室
//               xgliu@cad.zju.edu.cn
//  最近修改：2020年3月25日 
//  初次创建：2020年3月24日，用于<<程序设计专题>>课程教学
//
//===========================================================================

#ifndef ___turtle_h_________________
#define ___turtle_h_________________

// 画笔运动命令
void turtle_put(double x, double y);	// 设置turtle位置

void turtle_lookat(double angle);		// 设置turtle的前进方向
void turtle_forward(double distance);	// 向当前画笔方向移动distance
void turtle_backward(double distance);	// 向当前画笔相反方向移动distance
void turtle_right(double degree);		// 顺时针移动degree°
void turtle_left(double degree);		// 逆时针移动degree°
void turtle_circle(double radius);		// 画圆,半径为正(负),表示圆心在画笔的左边(右边)画圆
void turtle_circlearc(double radius, double angle);

// 画笔控制命令:
void turtle_penup();
void turtle_pendown();
void turtle_pensize(double width);		//绘制图形时的宽度
void turtle_pencolor(char colorname[]);	// 画笔颜色
void turtle_beginfill();				// 准备开始填充图形
void turtle_endfill();					// 填充完成；

// 画布变换
//   win_x = turtle_x * s + cx
//   win_y = turtle_x * s + cy
void turtle_canvas_scale(double s);
void turtle_cancas_translate(double cx, double cy);

// 显示一个乌龟
void turtle_show(double scale);

#endif //#ifndef ___turtle_h_________________