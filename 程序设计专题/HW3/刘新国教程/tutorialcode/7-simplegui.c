//===========================================================================
//
//  版权所有者： 刘新国，浙江大学计算机科学与技术学院
//                       CAD&CG国家重点实验室
//               xgliu@cad.zju.edu.cn
//  最近修改：2020年3月25日 
//  初次创建：2019年3月，用于<<程序设计专题>>课程教学
//
//===========================================================================

#include <windows.h>
#include <winuser.h>
#include "graphics.h"
#include "extgraph.h"
#include "imgui.h"
#include "linkedlist.h"

#define DEMO_MENU
#define DEMO_BUTTON
#define DEMO_ROTATE
#define DEMO_EDITBOX


/***************************************************************
 VisualStudio 2010 用户注意：
    将Character Set设置为 Use Multibyte Character Set
	否则中文显示不正常
***************************************************************/

// 全局变量
static double winwidth, winheight;   // 窗口尺寸
static float  rot_angle = 0;         // 三角形旋转角度
static int    enable_rotation = 1;   // 允许旋转
static int    show_more_buttons = 0; // 显示更多按钮

// 清屏函数，provided in libgraphics
void DisplayClear(void); 
// 计时器启动函数，provided in libgraphics
void startTimer(int id,int timeinterval);

// 用户的显示函数
void display(void); 

// 用户的字符事件响应函数
void CharEventProcess(char ch)
{
	uiGetChar(ch); // GUI字符输入
	display(); //刷新显示
}

// 用户的键盘事件响应函数
void KeyboardEventProcess(int key, int event)
{
	uiGetKeyboard(key,event); // GUI获取键盘
	display(); // 刷新显示
}

// 用户的鼠标事件响应函数
void MouseEventProcess(int x, int y, int button, int event)
{
	uiGetMouse(x,y,button,event); //GUI获取鼠标
	display(); // 刷新显示
}

// 旋转计时器
#define MY_ROTATE_TIMER  1

// 用户的计时器时间响应函数
void TimerEventProcess(int timerID)
{
	if( timerID==MY_ROTATE_TIMER && enable_rotation ) 
	{
		rot_angle += 10; // 全局变量
		display(); // 刷新显示
	}
}

// 用户主程序入口
// 仅初始化执行一次
void Main() 
{
	// 初始化窗口和图形系统
	SetWindowTitle("Graphics User Interface Demo");
	//SetWindowSize(10, 10); // 单位 - 英寸
	//SetWindowSize(15, 10);
	//SetWindowSize(10, 20);  // 如果屏幕尺寸不够，则按比例缩小
    InitGraphics();

	// 获得窗口尺寸
    winwidth = GetWindowWidth();
    winheight = GetWindowHeight();

	// 注册时间响应函数
	registerCharEvent(CharEventProcess);        // 字符
	registerKeyboardEvent(KeyboardEventProcess);// 键盘
	registerMouseEvent(MouseEventProcess);      // 鼠标
	registerTimerEvent(TimerEventProcess);      // 定时器

	// 开启定时器
	startTimer(MY_ROTATE_TIMER, 50);            

	// 打开控制台，方便用printf/scanf输出/入变量信息，方便调试
	// InitConsole(); 
}

#if defined(DEMO_MENU)
// 菜单演示程序
void drawMenu()
{ 
	static char * menuListFile[] = {"File",  
		"Open  | Ctrl-O", // 快捷键必须采用[Ctrl-X]格式，放在字符串的结尾
		"Close",
		"Exit   | Ctrl-E"};
	static char * menuListTool[] = {"Tool",
		"Triangle",
		"Circle",
		"Stop Rotation | Ctrl-T"};
	static char * menuListHelp[] = {"Help",
		"Show More  | Ctrl-M",
		"About"};
	static char * selectedLabel = NULL;

	double fH = GetFontHeight();
	double x = 0; //fH/8;
	double y = winheight;
	double h = fH*1.5; // 控件高度
	double w = TextStringWidth(menuListHelp[0])*2; // 控件宽度
	double wlist = TextStringWidth(menuListTool[3])*1.2;
	double xindent = winheight/20; // 缩进
	int    selection;
	
	// menu bar
	drawMenuBar(0,y-h,winwidth,h);
	// File 菜单
	selection = menuList(GenUIID(0), x, y-h, w, wlist, h, menuListFile, sizeof(menuListFile)/sizeof(menuListFile[0]));
	if( selection>0 ) selectedLabel = menuListFile[selection];
	if( selection==3 )
		exit(-1); // choose to exit
	
	// Tool 菜单
	menuListTool[3] = enable_rotation ? "Stop Rotation | Ctrl-T" : "Start Rotation | Ctrl-T";
	selection = menuList(GenUIID(0),x+w,  y-h, w, wlist,h, menuListTool,sizeof(menuListTool)/sizeof(menuListTool[0]));
	if( selection>0 ) selectedLabel = menuListTool[selection];
	if( selection==3 )
		enable_rotation = ! enable_rotation;
	
	// Help 菜单
	menuListHelp[1] = show_more_buttons ? "Show Less | Ctrl-M" : "Show More | Ctrl-M";
	selection = menuList(GenUIID(0),x+2*w,y-h, w, wlist, h, menuListHelp,sizeof(menuListHelp)/sizeof(menuListHelp[0]));
	if( selection>0 ) selectedLabel = menuListHelp[selection];
	if( selection==1 )
		show_more_buttons = ! show_more_buttons;

	// 显示菜单运行结果
	x = winwidth/15;
	y = winheight/8*7;
	SetPenColor("Blue");
	drawLabel(x,    y-=h, "Most recently selected menu is:");
	SetPenColor("Red");
	drawLabel(x+xindent, y-=h, selectedLabel);
	SetPenColor("Blue");
	drawLabel(x,    y-=h, "Control Variable Status");
	SetPenColor("Red");
	drawLabel(x+xindent, y-=h, enable_rotation ? "Rotation Enabled" : "Rotation Disabled");
	drawLabel(x+xindent, y-=h, show_more_buttons ? "More Buttons" : "Less Button");
}
#endif // #if defined(DEMO_MENU)

#if defined(DEMO_ROTATE)
// 旋转三角形演示程序
#include <math.h>

// 对三角形的坐标进行旋转
// cenx, ceny - 旋转中心的坐标
// angle - 旋转角度
// tri[i][0/1] - 三角形第 i 个顶点的x/y坐标
void rot_triangle(double cenx, double ceny, double angle, double tri[][2])
{
	double c = cos(angle/180*3.14159265);
	double s = sin(angle/180*3.14159265);
	int k;
	for( k = 0; k<3; k++ )
	{
		double dx = tri[k][0]-cenx;
		double dy = tri[k][1]-ceny;
		tri[k][0] = cenx + dx * c - dy * s;
		tri[k][1] = ceny + dx * s + dy * c;
	}
}

// 画三角形 <t[0], t[1], t[2]>
void draw_triangle(double t[][2])
{
	MovePen(t[0][0], t[0][1]);
	DrawLine(t[1][0]-t[0][0], t[1][1]-t[0][1]);
	DrawLine(t[2][0]-t[1][0], t[2][1]-t[1][1]);
	DrawLine(t[0][0]-t[2][0], t[0][1]-t[2][1]);
}

// 画旋转三角形
void drawRotateTriangle()
{
	double cx = winwidth/5*4;
	double cy = winheight/4*3;
	double dtx = winwidth/15;
	double dty = winheight/8;
	double tri[3][2] = // 构造一个三角形
	{ {cx, cy}, {cx+dtx, cy}, {cx+dtx/2, cy+dty} };
	double fH = GetFontHeight();
	double h = fH*2; // 控件高度
	double w = winwidth/5; // 控件宽度
	double x = winwidth/2.5;
	double y = winheight/4*3;

	// 三角形
	rot_triangle(tri[0][0],tri[0][1],rot_angle,tri);
	SetPenColor("Green");
	draw_triangle(tri);

	// 旋转按钮
	if (button(GenUIID(0), x, y+h, w, h, enable_rotation ? "Stop Rotation" : "Start Rotation"))
		enable_rotation = ! enable_rotation;

	// 程序退出按钮
	if( button(GenUIID(0), x, y-h, w, h, "Click to Quit") )
		exit(-1);
}
#endif //#if defined(DEMO_ROTATE)

#if defined(DEMO_BUTTON)
// 按钮演示程序
void drawButtons()
{
	double fH = GetFontHeight();
	double h = fH*2;  // 控件高度
	double x = winwidth/2.5;  
	double y = winheight/2-h; 
	double w = winwidth/5; // 控件宽度

	if (button(GenUIID(0), x, y, w, h, show_more_buttons ? "Show Less Buttons" : "Show More Buttons"))
		show_more_buttons = ! show_more_buttons;
	
	if( show_more_buttons ) {
		int k;
		for( k = 0; k<3; k++ ) {
			char name[128]; sprintf(name, "Button Array %d", k);
			// use GenUIID(k) to have different ID for multiple buttons by the same code
			button(GenUIID(k), x + w*1.2, y - k*h*2, w, h, name); 
		}

	}

	if( button(GenUIID(0), x, y-1.5*h, w, h, "Use Predefined Colors") )
	{	
		static int times = 0; 
		usePredefinedColors(++times);
	}

	if( button(GenUIID(0), x, y-3*h, w, h, "Random Button Colors") )
	{	
		char * c[] = {"Black","Dark Gray","Gray","Light Gray","White", "Cyan",
			"Brown", "Red", "Orange", "Yellow", "Green","Blue","Violet", "Magenta"};
		int N = sizeof(c)/sizeof(c[0]);
		static int times = 0; times++;
		setButtonColors (c[times%N], c[(times+1)%N], c[(times+2)%N], c[(times+3)%N], 1);
	}

	if( button(GenUIID(0), x, y-4.5*h, w, h, "Random EditBox Colors") )
	{	
		char * c[] = {"Black","Dark Gray","Gray","Light Gray","White", "Cyan",
			"Brown", "Red", "Orange", "Yellow", "Green","Blue","Violet", "Magenta"};
		int N = sizeof(c)/sizeof(c[0]);
		static int times = 0; times++;
		setTextBoxColors (c[times%N], c[(times+1)%N], c[(times+2)%N], c[(times+3)%N], 1);
	}

}
#endif // #if defined(DEMO_BUTTON)

#if defined(DEMO_EDITBOX)
// 文本编辑演示程序
void drawEditText()
{
	static char firstName[80] = "Xinguo";
	static char lastName[80] = "Liu";
	static char results[200] = "";
	static char memo[80]="Hello World! Edit me!";
	static char numstr[80] = "3.14159265";
	static char newnum[80] = "";
	double fH = GetFontHeight();
	double h = fH*2; // 控件高度
	double w = winwidth/4; // 控件宽度
	double x = winwidth/15;
	double y = winheight/2-h;

	textbox(GenUIID(0), winwidth / 10, winheight-h-h, w, h, memo, sizeof(memo));
	textbox(GenUIID(0), x, y, w, h, memo, sizeof(memo));

	SetPenColor("Brown"); 
	drawLabel(x-fH/2-TextStringWidth("名"), (y-=h*1.2)+fH*0.7, "名");
	if( textbox(GenUIID(0), x, y, w, h, firstName, sizeof(firstName)) )
		sprintf(results,"Text edit result is: %s+%s", firstName,lastName);

	SetPenColor("Brown"); 
	drawLabel(x-fH/2-TextStringWidth("姓"), (y-=h*1.2)+fH*0.7, "姓");
	if( textbox(GenUIID(0), x, y, w, h, lastName, sizeof(lastName)) )
		sprintf(results,"Text edit result is: %s+%s", firstName,lastName);

	SetPenColor("Gray"); 
	drawLabel(x, y-=fH*1.2, results);

	//y = winheight/2;
	if( textbox(GenUIID(0),x,y-=h*1.8,w,h,numstr,sizeof(numstr)) )
	{
		double value; sscanf(numstr,"%lf",&value);
		sprintf(newnum,"Represented value is: %.20f", value);
	}
	SetPenColor("Gray"); 
	drawLabel(x,y-=fH*1.2, newnum);
}
#endif // #if defined(DEMO_EDITBOX)

void display()
{
	// 清屏
	DisplayClear();

#if defined(DEMO_ROTATE)
	// 旋转的三角形
	drawRotateTriangle();
#endif
			
#if defined(DEMO_BUTTON)
	// 按钮
	drawButtons();
#endif

#if defined(DEMO_EDITBOX)
	// 编辑文本字符串
	drawEditText();
#endif

#if defined(DEMO_MENU)
	// 绘制和处理菜单
	drawMenu();
#endif
}
