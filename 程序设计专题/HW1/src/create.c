#include<stdio.h>
#include"create.h"
extern int map0[N+2][N+2];
extern struct direction{
	int x,y;
} fx[4];
extern int i,j,k; 
extern struct direction p;
extern struct direction op;
extern struct direction ed;
extern int tmp,tmp1;

void create(){
	op.x=rand()%N+1;
	op.y=rand()%N+1;
	ed.x=rand()%N+1;
	ed.y=rand()%N+1;
	while(op.x==ed.x&&op.y==ed.y){
		ed.x=rand()%N+1;
		ed.y=rand()%N+1;
	}//随机出起点终点
	
	for(i=0;i<N+2;i++){
		for(j=0;j<N+2;j++){
			map0[i][j]=-1;
		}
	}//令地图中全为墙
	
	p.x=op.x;
	p.y=op.y;
	int m=0; 
	map0[p.x][p.y]=0;
	while(!(p.x==ed.x&&p.y==ed.y)){
		i=rand()%4;
		tmp=fx[i].x+p.x;
		tmp1=fx[i].y+p.y;
		while(tmp<1||tmp>N||tmp1<1||tmp1>N){
			i=rand()%4;
			tmp=fx[i].x+p.x;
			tmp1=fx[i].y+p.y;
		}p.x=tmp;
		p.y=tmp1;
		map0[p.x][p.y]=0;
		m++;
	}//保证从起点能顺利到达终点 
	 
	while(m<=N*N/2){
		int a=rand()%N+1;
		int b=rand()%N+1;
		if(a==op.x&&b==op.y)continue;
		if(a==ed.x&&b==ed.y)continue;
		if(map0[a][b])map0[a][b]=0;m++;
	}//除路径外再打通一些点 
	
	for(i=0;i<=N+1;i++){
		for(j=0;j<=N+1;j++){
			if(map0[i][j]){
				printf("■"); 
			}else{
				printf("□");
			}
		}
		printf("\n");
	}printf("起点为（%d，%d）\n",op.x,op.y);
	printf("终点为（%d，%d）\n",ed.x,ed.y);
}

int judge(){
	int h;
	for(h=0;h<4;h++){
		if(map0[2*fx[h].x+p.x][2*fx[h].y+p.y]&&2*fx[h].x+p.x>0&&2*fx[h].x+p.x<N+1&&2*fx[h].y+p.y>0&&2*fx[h].y+p.y<N+1){
			return 1;
		}
	}return 0;
}//判断该点四周是否有未走过的路的函数 

void doit(){
	while(judge()){//判断该点四周是否有未走过的路 
		int i1=rand()%4;
		tmp=2*fx[i1].x+p.x;
		tmp1=2*fx[i1].y+p.y;//随机走两步 
		while(tmp<1||tmp>N||tmp1<1||tmp1>N||map0[tmp][tmp1]==0){
			i1=rand()%4;
			tmp=2*fx[i1].x+p.x;
			tmp1=2*fx[i1].y+p.y;
		}//若路已经走过或者越界则重新随机 
		map0[tmp][tmp1]=0;
		map0[tmp-fx[i1].x][tmp1-fx[i1].y]=0;
		p.x=tmp;
		p.y=tmp1;
		doit();//递归 
		p.x=p.x-2*fx[i1].x;
		p.y=p.y-2*fx[i1].y;//回到上一个点 
	}
		return;
}
void create1(){
	for(i=0;i<N+2;i++){
		for(j=0;j<N+2;j++){
			map0[i][j]=-1;
		}
	}//令地图中全为墙
	printf("请输入起点(奇数点1-%d)：\n",N);
	scanf("%d %d",&op.x,&op.y);
	printf("请输入终点(奇数点1-%d)：\n",N);
	scanf("%d %d",&ed.x,&ed.y);//确定起点终点 
	map0[op.x][op.y]=0;//起点为0 
	p.x=op.x;
	p.y=op.y;
	doit();//开始递归 
	for(i=0;i<=N+1;i++){
		for(j=0;j<=N+1;j++){
			if(map0[i][j]){
				printf("■"); 
			}else{
				printf("□");
			}
		}
		printf("\n");
	}printf("起点为（%d，%d）\n",op.x,op.y);
	printf("终点为（%d，%d）\n",ed.x,ed.y);//输出 
} 

