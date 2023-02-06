#include "display_winner.h"
extern int mode;//模式记录

static int firstread=0;//是否第一次进入该页面 
static int result[7];//存储当前页面显示的胜负结果 
static int i=0;//辅助变量 
static char name1[7][20]= {0},name2[7][20]= {0};//用户名 
static int total;//当前页面总共展示结果数 
static int istailed=0;//是否已经展示最后一条内容 
static int page=1;//页码 
void display2() {
	DisplayClear();
	if(!firstread) {
		firstread=1;
		total=0;
		memset(result,0,7);
//	打开文件
		FILE *fp,*fw;
		fp=fopen("winner.txt","r");
		for(i=0; i<(page-1)*7; i++) {
			fscanf(fp,"%s",name1[0]);
			fscanf(fp,"%s",name2[0]);
			fscanf(fp,"%d",&result[0]);
		}
		for(i=0; i<7&&!feof(fp); i++) {
			memset(name1[i],0,20);
			memset(name2[i],0,20);
			fscanf(fp,"%s",name1[i]);
			fscanf(fp,"%s",name2[i]);
			fscanf(fp,"%d",&result[i]);
			if(feof(fp))istailed=1;
		}
		total=i;
		fclose(fp);
	}
//	绘制页面
	SetPenColor("black");
	SetPointSize(30);
	drawLabel(WindowWidth/2-TextStringWidth("对   局   记   录")/2,9*WindowHeight/10,"对   局   记   录");
	SetPointSize(15);
	drawLabel(WindowWidth/2,8.5*WindowHeight/10,"最多展示七条对局结果");
	SetPointSize(25);
	drawLabel(5,11,"Player1");
	drawLabel(9,11,"Player2");
	drawLabel(13,11,"Winner");
	SetPointSize(20);
	for(i=0; i<total; i++) {
		drawLabel(5,10.2-i,name1[i]);
		drawLabel(9,10.2-i,name2[i]);
		if(result[i]) {
			drawLabel(13,10.2-i,name2[i]);
		} else {
			drawLabel(13,10.2-i,name1[i]);
		}
	}
	setButtonColors("Brown","Brown","Gray","Gray",0);
	if(button(GenUIID(0),6,2,3,1,"上一页")) {
		if(page!=1)page--;
		if(istailed)istailed=0;
		firstread=0;
	}
	if(button(GenUIID(0),13,2,3,1,"下一页")) {
		if(!istailed)page++;
		firstread=0;
	}
//	返回按钮
	SetPointSize(15);
	setButtonColors("Brown","Brown","Gray","Gray",0);
	if(button(GenUIID(0),17,1,3,1,"返回")) {
		mode=0;
		firstread=0;
		istailed=0;
		page=1;
	}
}
