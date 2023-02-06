#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<stdbool.h>

int main(int argc,char *argv[]){
/*init*/
	char a[8]={0},b[8]={0};
	int i,j;
	bool isStart=1;
	FILE *fin,*fout;
	int rc;
	if(argc<3){
		printf("usage: %s %s\n", argv[0], "srcfile targetfile");
	}
	if((fin=fopen("encrypted","rb"))==NULL){
		printf("error\n");
		exit(0);
	}
	if((fout=fopen("out.mp3","wb"))==NULL){
		printf("error2\n");
		fclose(fin);
		exit(0);
	}
/*decrypt*/
//	录入置换矩阵 
	int change[8][8],x,y,buer;//x,y记录change数组坐标，buer只有0和1两个值 
	for(i=0;i<8;i++){
		for(j=0;j<8;j++){
			change[i][j]=0;
		}
	}
	for(i=1;i<5;i++){
		change[i-1][0]=2*i+56;
		for(j=1;j<=7;j++){
			change[i-1][j]=change[i-1][j-1]-8;
		}
	}
	for(i=5;i<=8;i++){
		change[i-1][0]=2*i+47;
		for(j=1;j<=7;j++){
			change[i-1][j]=change[i-1][j-1]-8;
		}
	} 
	/*for(i=0;i<=7;i++){
		for(j=0;j<=7;j++){
			printf("%d ",change[i][j]);
		}
		printf("\n");
	}*/
//	read and write
	int length=fread(a, 1, 8, fin);
	while(!feof(fin)){
		for(i=0;i<8;i++)b[i]=0;
		//异或 
		for(i=0;i<8;i++){
			a[i]=a[i]^22;
		}
		//使用置换矩阵 
		for(i=0;i<8;i++){
			for(j=0;j<8;j++){
				buer=(a[i]>>(7-j))&1;//第i个数第j+1位是否为1 
				x=(change[i][j]-1)/8;//计算原本的行数 
				y=(change[i][j]-1)%8;//原本的列数 
				b[x]+=(buer<<(7-y));//将第x行第y列的数移位加上去 
			}
		}
		//读入下一组数据 
		length=fread(a,1,8,fin);
		//判断这组数据是否为结尾 
		if(!isStart)fwrite(b,length,1,fout);
		else {
			fwrite(b+4,4,1,fout);//跳过开始4byte 
			isStart=!isStart;
		}
	}
	//结尾去掉0 
	for(i=0;b[i]!=0;i++){
		fwrite(b,1,1,fout);
	}
	printf("change finished!\n");
/*close*/
	if(fclose(fin)){
		printf("cannot close fin\n");
		exit(0);
	}
	if(fclose(fout)){
		printf("cannot close fout\n");
		exit(0);
	}
	return 0;
}
