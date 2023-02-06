#include "writefile.h"

static FILE *fn=NULL;
void newfile() {
	int i=1;
	char ch[5];
	sprintf(ch,"%d",i);
	while(fn=fopen(Concat(ch,".txt"),"r")) {
		i++;
		sprintf(ch,"%d",i);
		fclose(fn);
	}
	fn=fopen(Concat(ch,".txt"),"w");
	char* name1=getname1();
	char* name2=getname2(); 
	WriteName(name1,name2);
}

void WriteName(char name1[],char name2[]) {
	FILE *fp;
	fp=fopen("participant_list.txt","r");
	if(fp!=NULL) {
		fp=fopen("participant_list.txt","a+");
	} else {
		fp=fopen("participant_list.txt","w");
	}
	fprintf(fp,"%s\n%s\n",name1,name2);
	fclose(fp); 
}

void close_fn(int isClose){
	if(isClose&&fn){
		fclose(fn);
	}
	fn=NULL;
}
 
void writenew(int px,int py,int nx,int ny) {
	fprintf(fn,"%d %d %d %d\n",px,py,nx,ny);
}
