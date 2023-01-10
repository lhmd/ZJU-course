#include<bits/stdc++.h>
using namespace std;

// 数据结构
char preblock[30005][55];//代码块（以空格分开）
int beginline[10005];//每行代码从哪里开始
int prelines;//汇编行数
int newlines;//机器码行数
map<string,int>label;//label对应的pc值
int preblocknum;//代码块数量

//函数
int hextodec(char* s);//十六进制转十进制
void printregister(int r);//输出寄存器三位二进制数
void _dectobin(int dec,int bit);//十进制转二进制输出(补码)
void dectobin(int dec,int bit);//十进制转二进制输出
void printsharp(int loc,int bit);//输出#（正常）
void printoff(int pc,int bit);//输出offset9
void printx(int loc,int bit);//输出x（正常）

// 主程序
int main() {
//	freopen("1.txt","w",stdout);
//	读入汇编代码块
	int isend=0;
	int i=0,j=0;
	while(!isend) {
		scanf("%s",preblock[i]);
//		printf("%s\n",preblock[i]);
		if(!strcmp(preblock[i],".STRINGZ")){
			int flag=0,p=0;
			i++;
			while(1){
				char ch;
				scanf("%c",&ch);
				if(ch=='"'&&flag==0){
					flag=1;
					continue;
				}
				if(flag&&ch=='"'){
					flag=0;
					break;
				}
				if(flag){
					preblock[i][p]=ch;
					p++;
				}
			}
			preblock[i][p]='\0';
//			printf("%s\n",preblock[i]);
		}
		isend=!strcmp(preblock[i],".END");//寻找代码结束位置
		i++;
	}
	i--;
	preblocknum=i;
	//orig输出
	int orig=hextodec(preblock[1]);
	dectobin(orig,16);//十进制转为二进制并输出
	printf("\n");
	//第一遍循环：完成汇编行数确定和label
	for(i=2; i<preblocknum; i++) {
		if(
		    !strcmp(preblock[i],"ADD")||
		    !strcmp(preblock[i],"AND")||
		    !strcmp(preblock[i],"LDR")||
		    !strcmp(preblock[i],"STR")) {
			beginline[j]=i;
//			printf("%s\n",preblock[i]);
			i+=3;
			j++;
			continue;
		}
		if(
		    !strcmp(preblock[i],"NOT")||
		    !strcmp(preblock[i],"LD" )||
		    !strcmp(preblock[i],"LDI")||
		    !strcmp(preblock[i],"LEA")||
		    !strcmp(preblock[i],"ST")||
		    !strcmp(preblock[i],"STI")
		) {
			beginline[j]=i;
			i+=2;
			j++;
			continue;
		}
		if(!strcmp(preblock[i],".BLKW")){
		    int length=strlen(preblock[i+1]);
			int k=0,sum=0;
//			printf("\n%d\n",length);
			for(k=1; k<length; k++) {
				sum*=10;
				sum+=preblock[i+1][k]-'0';
			}
//			printf("\n%d\n",sum);
			for(k=1;k<=sum;k++){
				beginline[j]=i;
				j++;
			}
			i++;
		}
		if(!strcmp(preblock[i],".STRINGZ")){
			int length=strlen(preblock[i+1]);
			beginline[j++]=i;
			for(int k=1;k<=length;k++){
				beginline[j++]=-1;
			}
			i++;
		}
		if(
		    !strcmp(preblock[i],"TRAP")||
		    !strcmp(preblock[i],"JMP")||
		    !strcmp(preblock[i],"JSR")||
		    !strcmp(preblock[i],"JSRR")||
		    !strcmp(preblock[i],"BR")||
		    !strcmp(preblock[i],"BRn")||
		    !strcmp(preblock[i],"BRz")||
		    !strcmp(preblock[i],"BRp")||
		    !strcmp(preblock[i],"BRnz")||
		    !strcmp(preblock[i],"BRnp")||
		    !strcmp(preblock[i],"BRzp")||
		    !strcmp(preblock[i],"BRnzp")||
		    !strcmp(preblock[i],".FILL"))
		{
			beginline[j]=i;
			i+=1;
			j++;
			continue;
		}
		if(
		    !strcmp(preblock[i],"GETC")||
		    !strcmp(preblock[i],"OUT")||
		    !strcmp(preblock[i],"PUTS")||
		    !strcmp(preblock[i],"IN")||
		    !strcmp(preblock[i],"PUTSP")||
		    !strcmp(preblock[i],"HALT")||
		    !strcmp(preblock[i],"RET")||
		    !strcmp(preblock[i],"RTI")
		) {
			beginline[j]=i;
			j++;
			continue;
		} else {
			label[preblock[i]]=j;
//			printf("%d\n",j);
//			printf("%s\n",preblock[i]);
			continue;
		}
	}
	prelines=j;
//	printf("%d\n",prelines);
	//第二遍循环：执行代码
	for(j=0; j<prelines; j++) {
//		printf("!!!!!!!!!!!%d\n",beginline[j]);
		if(beginline[j]==-1)continue;
		if(!strcmp(preblock[beginline[j]],"ADD")) {
			printf("0001");
			printregister(preblock[beginline[j]+1][1]-'0');
			printregister(preblock[beginline[j]+2][1]-'0');
			if(preblock[beginline[j]+3][0]=='#') {
				printf("1");
				printsharp(beginline[j]+3,5);
			} else if(preblock[beginline[j]+3][0]=='R'){
				printf("000");
				printregister(preblock[beginline[j]+3][1]-'0');
			}else{
				printf("1");
				printx(beginline[j]+3,5);
			}
			printf("\n");
		}
		if(!strcmp(preblock[beginline[j]],"AND")) {
			printf("0101");
			printregister(preblock[beginline[j]+1][1]-'0');
//			printf("\n%d\n",preblock[beginline[j]+1][1]-'0');
			printregister(preblock[beginline[j]+2][1]-'0');
			if(preblock[beginline[j]+3][0]=='#') {
				printf("1");
				printsharp(beginline[j]+3,5);
			} else if(preblock[beginline[j]+3][0]=='R'){
				printf("000");
				printregister(preblock[beginline[j]+3][1]-'0');
			}else{
				printf("1");
				printx(beginline[j]+3,5);
			}
			printf("\n");
		}
		if(!strcmp(preblock[beginline[j]],"NOT")) {
			printf("1001");
			printregister(preblock[beginline[j]+1][1]-'0');
			printregister(preblock[beginline[j]+2][1]-'0');
			printf("111111\n");
		}
		if(!strcmp(preblock[beginline[j]],"LD")) {
			printf("0010");
			printregister(preblock[beginline[j]+1][1]-'0');
			if(preblock[beginline[j]+2][0]=='#'){
				printsharp(beginline[j]+2,9);
				printf("\n");
			}else{
				int pc=label[preblock[beginline[j]+2]];
				pc-=j+1;
				printoff(pc,9);
				printf("\n");
			}
		}
		if(!strcmp(preblock[beginline[j]],"LDR")) {
			printf("0110");
			printregister(preblock[beginline[j]+1][1]-'0');
			printregister(preblock[beginline[j]+2][1]-'0');
			if(preblock[beginline[j]+3][0]=='#') {
				printsharp(beginline[j]+3,6);
			}else{
				printx(beginline[j]+3,6);
			}
			printf("\n");
		}
		if(!strcmp(preblock[beginline[j]],"LDI")) {
			printf("1010");
			printregister(preblock[beginline[j]+1][1]-'0');
			if(preblock[beginline[j]+2][0]=='#'){
				printsharp(beginline[j]+2,9);
				printf("\n");
			}else{
				int pc=label[preblock[beginline[j]+2]];
				pc-=j+1;
				printoff(pc,9);
				printf("\n");
			}
		}
		if(!strcmp(preblock[beginline[j]],"LEA")) {
			printf("1110");
			printregister(preblock[beginline[j]+1][1]-'0');
			if(preblock[beginline[j]+2][0]=='#'){
				printsharp(beginline[j]+2,9);
				printf("\n");
			}else{
				int pc=label[preblock[beginline[j]+2]];
				pc-=j+1;
				printoff(pc,9);
				printf("\n");
			}
		}
		if(!strcmp(preblock[beginline[j]],"ST")) {
			printf("0011");
			printregister(preblock[beginline[j]+1][1]-'0');
			if(preblock[beginline[j]+2][0]=='#'){
				printsharp(beginline[j]+2,9);
				printf("\n");
			}else{
				int pc=label[preblock[beginline[j]+2]];
				pc-=j+1;
				printoff(pc,9);
				printf("\n");
			}
		}
		if(!strcmp(preblock[beginline[j]],"STR")) {
			printf("0111");
			printregister(preblock[beginline[j]+1][1]-'0');
			printregister(preblock[beginline[j]+2][1]-'0');
			if(preblock[beginline[j]+3][0]=='#') {
				printsharp(beginline[j]+3,6);
			}else{
				printx(beginline[j]+3,6);
			}
			printf("\n");
		}
		if(!strcmp(preblock[beginline[j]],"STI")) {
			printf("1011");
			printregister(preblock[beginline[j]+1][1]-'0');
			if(preblock[beginline[j]+2][0]=='#'){
				printsharp(beginline[j]+2,9);
				printf("\n");
			}else{
				int pc=label[preblock[beginline[j]+2]];
				pc-=j+1;
				printoff(pc,9);
				printf("\n");
			}
		}
		if(!strcmp(preblock[beginline[j]],"TRAP")) {
			printf("11110000");
			int x=hextodec(preblock[beginline[j]+1]);
			dectobin(x,8);
			printf("\n");
//			printf("!!!!!!!%d\n",x); 
		}
		if(!strcmp(preblock[beginline[j]],"GETC")) printf("1111000000100000\n");
		if(!strcmp(preblock[beginline[j]],"OUT"))  printf("1111000000100001\n");
		if(!strcmp(preblock[beginline[j]],"PUTS")) printf("1111000000100010\n");
		if(!strcmp(preblock[beginline[j]],"IN"))   printf("1111000000100011\n");
		if(!strcmp(preblock[beginline[j]],"PUTSP"))printf("1111000000100100\n");
		if(!strcmp(preblock[beginline[j]],"HALT")) printf("1111000000100101\n");
		if(!strcmp(preblock[beginline[j]],"BR")||
			!strcmp(preblock[beginline[j]],"BRn")||
		    !strcmp(preblock[beginline[j]],"BRz")||
		    !strcmp(preblock[beginline[j]],"BRp")||
		    !strcmp(preblock[beginline[j]],"BRnz")||
		    !strcmp(preblock[beginline[j]],"BRnp")||
		    !strcmp(preblock[beginline[j]],"BRzp")||
		    !strcmp(preblock[beginline[j]],"BRnzp")
			){
		    if(!strcmp(preblock[beginline[j]],"BR")||!strcmp(preblock[beginline[j]],"BRnzp"))printf("0000111");
		    if(!strcmp(preblock[beginline[j]],"BRn"))printf("0000100");
		    if(!strcmp(preblock[beginline[j]],"BRz"))printf("0000010");
		    if(!strcmp(preblock[beginline[j]],"BRp"))printf("0000001");
		    if(!strcmp(preblock[beginline[j]],"BRnz"))printf("0000110");
		    if(!strcmp(preblock[beginline[j]],"BRnp"))printf("0000101");
		    if(!strcmp(preblock[beginline[j]],"BRzp"))printf("0000011");
			if(preblock[beginline[j]+1][0]=='#'){
				printsharp(beginline[j]+1,9);
				printf("\n");
			}else{
				int pc=label[preblock[beginline[j]+1]];
				pc-=j+1;
//				printf("%d\n",pc);
				printoff(pc,9);
				printf("\n");
			}
		}
		if(!strcmp(preblock[beginline[j]],"JMP")){
			printf("1100000");
			printregister(preblock[beginline[j]+1][1]-'0');
			printf("000000\n");
		}
		if(!strcmp(preblock[beginline[j]],"RET"))printf("1100000111000000\n");
		if(!strcmp(preblock[beginline[j]],"JSR")){
			printf("01001");
			if(preblock[beginline[j]+1][0]=='#'){
				printsharp(beginline[j]+1,11);
				printf("\n");
			}else{
				int pc=label[preblock[beginline[j]+1]];
				pc-=j+1;
				printoff(pc,11);
				printf("\n");
			}
		}
		if(!strcmp(preblock[beginline[j]],"JSRR")){
			printf("0100000");
			printregister(preblock[beginline[j]+1][1]-'0');
			printf("000000\n");
		}
		if(!strcmp(preblock[beginline[j]],"RTI"))printf("1000000000000000\n");
		if(!strcmp(preblock[beginline[j]],".FILL")){
			if(preblock[beginline[j]+1][0]=='#') {
				printsharp(beginline[j]+1,16);
			}else{
				printx(beginline[j]+1,16);
			}
			printf("\n");
		}
		if(!strcmp(preblock[beginline[j]],".BLKW")){
			printf("0111011101110111\n");
		}
		if(!strcmp(preblock[beginline[j]],".STRINGZ")){
			int length=strlen(preblock[beginline[j]+1]);
			int k;
			for(k=0;k<length;k++){
				int x=preblock[beginline[j]+1][k];
				dectobin(x,16);
				printf("\n");
			}
			printf("0000000000000000\n");
		}
	}
}



//函数
int hextodec(char* s) {
	int i=0,dec=0;
	if(s[0]=='x'||s[0]=='X') i=1;
	while(s[i]!=0) {
		int tmp=0;
		if(s[i]>='0'&&s[i]<='9')tmp=s[i]-'0';
		if(s[i]>='A'&&s[i]<='F')tmp=s[i]-'A'+10;
		if(s[i]>='a'&&s[i]<='f')tmp=s[i]-'a'+10;
		dec=dec*16+tmp;
		i++;
	}
	return dec;
}

void dectobin(int dec,int bit) {
	int print[20];
	memset(print,0,sizeof(print));
	int i;
	for(i=0; i<bit; i++) {
		print[bit-1-i]=dec%2;
		dec/=2;
	}
	for(i=0; i<bit; i++) {
		printf("%d",print[i]);
	}
}

void printregister(int r) {
	int print[20];
	memset(print,0,sizeof(print));
	int i;
	for(i=0; i<3; i++) {
		print[2-i]=r%2;
		r/=2;
	}
	for(i=0; i<3; i++) {
		printf("%d",print[i]);
	}
}

void _dectobin(int dec,int bit) {
	int print[20];
	memset(print,0,sizeof(print));
	int i;
	for(i=0; i<bit; i++) {
		print[bit-1-i]=1-dec%2;
		dec/=2;
	}
	print[bit-1]++;
	for(i=0; i<bit-1; i++) {
		if(print[bit-1-i]==2) {
			print[bit-1-i]=0;
			print[bit-i-2]++;
		}
	}
	if(print[0]==2)print[0]=0;
	for(i=0; i<bit; i++) {
		printf("%d",print[i]);
	}
}

void printsharp(int loc,int bit) {
//	printf("\n%s\n",preblock[loc]);
	if(preblock[loc][1]=='-') {
		int length=strlen(preblock[loc]);
		length-=2;
		int k=0,sum=0;
		for(k=0; k<length; k++) {
			sum*=10;
			sum+=preblock[loc][2+k]-'0';
		}
		_dectobin(sum,bit);
	} else {
		int length=strlen(preblock[loc]);
		length-=1;
		int k=0,sum=0;
		for(k=0; k<length; k++) {
			sum*=10;
			sum+=preblock[loc][1+k]-'0';
		}
//		printf("\n%d\n",sum);
		dectobin(sum,bit);
	}
}

void printoff(int pc,int bit) {
	if(pc<0) {
		pc=-pc;
		_dectobin(pc,bit);
	} else {
		dectobin(pc,bit);
	}
}

void printx(int loc,int bit){
	if(preblock[loc][1]=='-') {
		int length=strlen(preblock[loc]);
		length-=2;
		int k=0,sum=0;
		for(k=0; k<length; k++) {
			sum*=16;
			if(preblock[loc][2+k]>='A'&&preblock[loc][2+k]<='Z'){
				sum+=preblock[loc][2+k]-'A'+10;
			}else if(preblock[loc][2+k]>='a'&&preblock[loc][2+k]<='z'){
				sum+=preblock[loc][2+k]-'a'+10;
			}else{
				sum+=preblock[loc][2+k]-'0';
			}
		}
//		printf("\n%d\n",sum); 
		_dectobin(sum,bit);
	} else {
		int length=strlen(preblock[loc]);
		length-=1;
		int k=0,sum=0;
		for(k=0; k<length; k++) {
			sum*=16;
			if(preblock[loc][1+k]>='A'&&preblock[loc][1+k]<='Z'){
				sum+=preblock[loc][1+k]-'A'+10;
			}else if(preblock[loc][1+k]>='a'&&preblock[loc][1+k]<='z'){
				sum+=preblock[loc][1+k]-'a'+10;
			}else{
				sum+=preblock[loc][1+k]-'0';
			}
		}
		dectobin(sum,bit);
	}
}
