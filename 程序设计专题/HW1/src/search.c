#include<stdio.h>
#include"create.h"
#include"search.h"

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
void search(){
	if(map0[p.x][p.y]==0){
    i=0;
    map0[p.x][p.y]=-1;
	cnt++;
	roadx[cnt]=p.x;
	roady[cnt]=p.y;
		if(p.x==ed.x&&p.y==ed.y){
			return;
		}
		else{
			p.x=p.x+fx[i].x;
			p.y=p.y+fx[i].y;
		}search();
	}
	else{
	  	p.x=p.x-fx[i].x;
		p.y=p.y-fx[i].y;
		if(i<3){
			i++;
			p.x=p.x+fx[i].x;
			p.y=p.y+fx[i].y;
  			search();
		}
		else if(i==3){
   			map0[p.x][p.y]=1;
			roadx[cnt]=-1;
   			roady[cnt]=-1;
			cnt--;
			p.x=roadx[cnt];
	        p.y=roady[cnt];
	        map0[p.x][p.y]=0;
	        cnt--;
			search();
		}
	}	
}

extern struct note {
		int x,y;
		int father,step;
}que[N*N+1];
extern int head,tail;
void search1(){
	head=1;tail=2;
	que[head].x=op.x;
	que[head].y=op.y;
	que[head].father=0;
	que[head].step=0;
	map1[op.x][op.y]=1;//初始化 
	k=0;//标记终点 
	
	while(head<tail){
		for(i=0;i<4;i++){
			tmp=que[head].x+fx[i].x;
			tmp1=que[head].y+fx[i].y;//下一个点的坐标
			if(tmp<1||tmp>N||tmp1<1||tmp1>N) {
				continue;
			}//判断是否越界 
			if(!(map0[tmp][tmp1])&&!(map1[tmp][tmp1])){
				map1[tmp][tmp1]=1;//标记走过
				que[tail].x=tmp;
				que[tail].y=tmp1;
				que[tail].father=head;
				que[tail].step=que[head].step+1;//纳入路径 
				tail++;
			}
			if(tmp==ed.x&&tmp1==ed.y){
				k=1;
				break; //到达终点 
			}
		}
		if(k==1){
			break;
		}
		head++;
	}
	tail--;
	cnt=que[tail].step;
	
} 

