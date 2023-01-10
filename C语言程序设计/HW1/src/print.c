#include<stdio.h>
#include"create.h"
#include"search.h"
#include"print.h"
extern int map0[N+2][N+2];
extern struct direction {
	int x,y;
}fx[4];
extern int i,j,k; 
extern struct direction p;
extern struct direction op;
extern struct direction ed;
extern int tmp,tmp1;

extern int min,cnt,t;
extern int map1[N+2][N+2];
extern int roadx[100],roady[100];

void print(){
	printf("路径为：\n") ;
	for(i=1;i<=cnt;i++)
	    printf("(%d,%d)\n",roadx[i],roady[i]);
}

extern struct note {
		int x,y;
		int father,step;
}que[N*N+1];
extern int head,tail;
void write(int i){
	if(!que[i].father){
		printf("(%d,%d)\n",que[i].x,que[i].y);
		return;
	}
	else{
	write(que[i].father);
	printf("(%d,%d)\n",que[i].x,que[i].y);
	}
}

void print1(){
	printf("最短路径为：\n") ;
	i=tail;
	write(que[i].father);
	printf("(%d,%d)\n",que[i].x,que[i].y); 
	printf("共%d步",cnt); 
}
