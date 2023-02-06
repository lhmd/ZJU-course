#include "graphics.h"
#include "extgraph.h"
#include "genlib.h"
#include "simpio.h"
#include "conio.h"
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

#include <windows.h>
#include <olectl.h>
#include <mmsystem.h>
#include <wingdi.h>
#include <ole2.h>
#include <ocidl.h>
#include <winuser.h>

string Text="";
bool isPlayed=FALSE;
int p1=0,p2=0;
static double w,h;

void KeyboardEvent(int key,int event);
void CharEvent(char c);
void TimerEvent(int TimerID);
void DrawCursor();
void draw();

void Main(){
	InitGraphics();
	w=GetWindowWidth();
	h=GetWindowHeight();
	InitConsole();

	MovePen(w/5,h*3/4);
	SetPenColor("green"); 
	DrawTextString("请在这里输入：");
	SetPenColor("red"); 
	MovePen(w/3,h*3/4);
	DrawTextString(Text);
	int timerID=1; 
	startTimer(timerID,300);
	
	registerKeyboardEvent(KeyboardEvent);
	registerCharEvent(CharEvent);
	registerTimerEvent(TimerEvent);
}

void draw(){
	MovePen(w/5,h*3/4);
	SetPenColor("green"); 
	DrawTextString("请在这里输入：");
	SetPenColor("red"); 
	MovePen(w/3,h*3/4);
	DrawTextString(Text);
	int timerID=1; 
	startTimer(timerID,300);
}
void KeyboardEvent(int key,int event){
	switch(event){
		case KEY_DOWN:
			switch(key){
				case VK_LEFT:
					if(p2==1)break;
					p1=p2;
					p2--;
					DisplayClear();
					break;
				case VK_RIGHT:
					if(p2==strlen(Text))break;
					p1=p2;
					p2++;
					DisplayClear();
					break;
				case VK_DELETE:
					if(p2==strlen(Text))return;
					int i;
					for(i=p2;i<strlen(Text)-1;i++)Text[i]=Text[i+1];
					Text[strlen(Text)-1]='\0';
					p1=p2;
					DisplayClear();
					break;
				case VK_BACK:
					for(i=p2-1;i<strlen(Text)-1;i++)Text[i]=Text[i+1];
					if(p2==strlen(Text)){
						p1=p2;
						p2--;
					}
					Text[strlen(Text)-1]='\0';
					DisplayClear();
					break;
				default:
					break;
			}
	}draw();
}

void CharEvent(char c){
	int i;
	switch(c){
		case '\r':
			printf("%s\n",Text);
			p2=p1=0;
			Text="\0";
			DisplayClear();
			break;
		case '\b':
			DisplayClear();
			break;
		default:
			Text=Concat(Text,CharToString(c));
			for(i=strlen(Text)-1;i>=p2;i--)Text[i]=Text[i-1];
			Text[p2]=c;
			p1=p2;
			p2++; 
			DisplayClear();
			break;
	}draw();
}

void DrawCursor(){
	MovePen(w/3+TextStringWidth(SubString(Text,0,p2-1 )),h*3/4);
	SetPenColor("black");
	DrawTextString("_");
}

void TimerEvent(int timerID){
	if(timerID==1){
		SetEraseMode(!isPlayed);
		DrawCursor();
		SetEraseMode(0);
		isPlayed=!isPlayed;
	}draw();
}

