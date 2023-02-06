#include "graphics.h"
#include "extgraph.h"
void Main(){
	InitGraphics();
	double w=GetWindowWidth();
	double h=GetWindowHeight();
	MovePen(w/4,h/4);
	DrawLine(w/2,0);
	DrawLine(0,h/2);
	DrawLine(-w/2,0);
	DrawLine(0,-h/2);
	DrawLine(0,h/4);
	DrawLine(w/2,0);
	MovePen(w/4+w/8,h/4);
	DrawLine(0,h/2);
	DrawLine(w/8,0);
	DrawLine(0,-h/2);
	DrawLine(w/8,0);
	DrawLine(0,h/2);
	MovePen(w/4,3*h/4);
	DrawLine(w/16,1.732*w/16);
	DrawLine(w/16,-1.732*w/16);
	int i;
	for(i=0;i<6;i++){
		DrawLine(0,w/48);
		DrawLine(w/48,0);
		DrawLine(0,-w/48);
		DrawLine(w/48,0);
	}
	DrawLine(w/16,1.732*w/16);
	DrawLine(w/16,-1.732*w/16);
}


