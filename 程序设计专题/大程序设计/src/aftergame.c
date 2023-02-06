#include "aftergame.h"
extern int mode;//模式记录

static int read=1;//是否读进文件，已读为0
static int chesscolor;

int color() {
	return chesscolor;
}

void Gameover(int Chess_Color) {
//	winner写进文件
	chesscolor=Chess_Color;
	char* name1=getname1();
	char* name2=getname2();
	close_fn(1);
//	InitConsole();
//	printf("%s",name1);
	if(read) {
		FILE *fp;
		fp=fopen("winner.txt","r");
		if(fp!=NULL) {
			fp=fopen("winner.txt","a+");
		} else {
			fp=fopen("winner.txt","w");
		}
		if(Chess_Color) {
			fprintf(fp,"%s\n%s\n%d\n",name1,name2,1);
		} else {
			fprintf(fp,"%s\n%s\n%d\n",name1,name2,0);
		}
		fclose(fp);
		read=0;
	}
//	绘制页面
	SetPenColor("Brown");
	drawRectangle(5,2,10,10,1);
	SetPointSize(35);
	SetPenColor("White");
	drawLabel(9,9,"Winner");
	if(Chess_Color) {
		drawLabel(9,7,"Black");
	} else {
		drawLabel(9.5,7,"Red");
	}
	SetPointSize(25);
	setButtonColors("Black","Black","Gray","Gray",0);
	if(button(GenUIID(0),6,3,3,1,"再来一局")) {
		mode=6;
	}
	if(button(GenUIID(0),11,3,3,1,"退出软件")) {
		exit(0);
	}
}
