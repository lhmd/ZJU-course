#include "graphics.h"
#include "extgraph.h"
#include "imgui.h"
typedef struct{
	double x, y;
} Point;


void myMouseEvent (int x, int y, int button, int event)
{
	static double x1,y1;//上一个点位置 
	Point p;//当前点位置 
	static int flag=0;
	p.x = ScaleXInches(x);
	p.y = ScaleYInches(y);
	switch (event)
	{
	case BUTTON_DOWN:
		if (button == LEFT_BUTTON){
			flag=1; 
			MovePen(x1,y1);
		}
		break;
		
	case BUTTON_UP:
		if(button==LEFT_BUTTON)
		flag=0;
		break;
		
	case MOUSEMOVE:
		if(flag){
			DrawLine(p.x-x1,p.y-y1);
			MovePen(p.x,p.y);
		}
		break;
	default:
		break;
	}
	x1=p.x;
	y1=p.y;
}
void Main()
{
	SetWindowTitle("clickdraw");
	InitGraphics();
	registerMouseEvent(myMouseEvent);

}
