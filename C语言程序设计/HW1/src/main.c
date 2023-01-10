#include"create.h"
#include"search.h"
#include"print.h"
int map0[N+2][N+2];
struct direction{
	int x,y;
};
struct direction fx[4]={
	{0,1},{1,0},{0,-1},{-1,0}
};//记录试探方向 
int i,j,k; 
struct direction p;//当前位置 
struct direction op;//初始位置 
struct direction ed;//终点 
int tmp,tmp1;

int min=999,cnt=0,t=0;
int map1[N+2][N+2];//这是记录走过的格子的地图，0为未走过 
int roadx[100],roady[100];//记录最短路径及正在试探的路径 

struct note{
		int x,y;
		int father,step;
	};//search1函数中实现队列的结构体 
struct note que[N*N+1];
int head,tail;//队列的头和尾 

int main(){
	srand(time(0));
//	create();
	create1();
	map1[op.x][op.y]=1;
	p.x=op.x;
	p.y=op.y;
	//search();
	search1();
	//print();
	print1();
	return 0;
}
