#pragma comment(lib,"ws2_32.lib")
#define _CRT_SECURE_NO_WARNINGS
#define _SCL_SECURE_NO_WARNINGS
#define _WINSOCK_DEPRECATED_NO_WARNINGS

#include <cstdio>
#include <iostream>
#include <string>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <winsock2.h>
#include <Windows.h>
#include <conio.h>
#define MaxBufSize 1024
using namespace std;

SOCKET c_socket;       //连接套接字
struct sockaddr_in addr_server; //服务器地址信息
char RecvBuff[MaxBufSize];
HANDLE hThread; //监听线程句柄

bool connect_status;   //连接状态

DWORD WINAPI RecvHandleThread(LPVOID lpParameter) {
	SOCKET* SocketClient = (SOCKET*)lpParameter;
	char RecvBuff[MaxBufSize];
	memset(RecvBuff, 0, sizeof(RecvBuff));
	while (1)
		if (recv(*SocketClient, RecvBuff, sizeof(RecvBuff), 0) > 0) {
			cout << endl << "[server] " << RecvBuff << endl << "[user]:  ";
			memset(RecvBuff, 0, sizeof(RecvBuff));
		}
}

//连接服务器，返回是否成功
bool connect_server() {
	if (connect_status) {
		printf("$ You has been connected\n");
		return true;
	}

	char server_ip[18];   //服务器地址
	int server_port = -1; //端口号

	//WinSock初始化
	WORD RequestVersion = MAKEWORD(2, 2);//希望使用的WinSock DLL的版本
	WSADATA Data;
	int startup = WSAStartup(RequestVersion, &Data);
	c_socket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);

	//提示输入服务器地址 & 端口
	printf("$ Please input srvers's ip: ");
	scanf("%s", server_ip);
	printf("$ Please input serverss port number: ");
	scanf("%d", &server_port);

	//构建服务器地址信息
	addr_server.sin_family = AF_INET;//地址家族
	addr_server.sin_port = htons(server_port);//注意转化为网络字节序
	addr_server.sin_addr.S_un.S_addr = inet_addr(server_ip);

	//连接服务器
	if (connect(c_socket, (struct sockaddr*)&addr_server, sizeof(addr_server)) == SOCKET_ERROR) {
		printf("$ Connection failed\n");
		return false;
	}
	else {//连接成功
		printf("$ Successfully connect to the sever\n");
		hThread = CreateThread(NULL, 0, &RecvHandleThread, &c_socket, 0, NULL);
		connect_status = true;
		return true;
	}
}



//发送信息
void send_message() {
	if (connect_status) {
		char info[973], SendBuff[MaxBufSize] = "s";
		char recv_ip[40];
		char recv_port[10];
		//读取接收方ip
		cout << "& Please input receiver's ip: ";
		scanf("%s", recv_ip);
		cout << endl;

		//读取接收方prot
		cout << "$ Please input receiver's port number: ";
		scanf("%s", recv_port);
		cout << endl;

		//读取待发送信息
		cout << "$ Please input the message to be sent: ";
		char c;
		scanf("%c", &c);
		;		int len = 0;
		while (scanf("%c", &c) && c != '\n')
			info[len++] = c;
		info[len] = '\0';
		cout << endl;

		//处理用户输入
		strcat(SendBuff, recv_ip);
		strcat(SendBuff, ":");
		strcat(SendBuff, recv_port);
		strcat(SendBuff, " ");
		strcat(SendBuff, info);
		int status = send(c_socket, SendBuff, sizeof(SendBuff), 0);
		if (status < 0)printf("$ Send failed\n");
	}
	else printf("$ No server connected\n");
}

//向服务器请求时间
void reqiure_time() {
	for (int i = 0; i < 100; i++) {
		if (connect_status) {
			char SendBuff[] = "t";
			int status = send(c_socket, SendBuff, sizeof(SendBuff), 0);
			if (status < 0) printf("$ Send failed\n");
		}
		else printf("$ No server connected\n");
		Sleep(1);
	}
}

//请求服务器机器名
void reqiure_name() {
	if (connect_status) {
		char SendBuff[] = "n";
		int status = send(c_socket, SendBuff, sizeof(SendBuff), 0);
		if (status < 0) printf("$ Send failed");
	}
	else printf("$ No server connected\n");
}

//请求用户列表
void require_list() {
	if (connect_status) {
		char SendBuff[] = "l";
		int status = send(c_socket, SendBuff, sizeof(SendBuff), 0);
		if (status < 0)printf("$ Send failed\n");
	}
	else printf("$ No server connected\n");
}

int main(void) {
	connect_status = false;
	printf("$ Hello\n");
	while (1) {
		printf("$ Supported functions are as follows:\n");
		printf("+-------------------------------+-------------+\n");
		printf("|            Function           |   Operate   |\n");
		printf("+-------------------------------+-------------+\n");
		printf("| Connect to the server.        |      1      |\n");
		if (connect_status) {
			printf("| Disconnect from the server.   |      2      |\n");
			printf("| Get current time.             |      3      |\n");
			printf("| Get your user name.           |      4      |\n");
			printf("| Get the users' list.          |      5      |\n");
			printf("| Send message to another user. |      6      |\n");
		}
		printf("| Disconnect and Exit.          |      0      |\n");
		printf("+-------------------------------+-------------+\n");
		printf("[user]: ");
		int op;
		scanf("%d", &op);
		if (connect_status) {
			//已连接状态下
			switch (op) {
			case 1://连接成功/失败反馈
				connect_status = connect_server();
				break;
			case 2:{//关闭连接
				int iResult = shutdown(c_socket, SD_SEND);
				if (iResult == SOCKET_ERROR) {
					cout << "$ Disconnect failed" << endl;
					WSAGetLastError();
					closesocket(c_socket);//关闭套接字
					WSACleanup();
				}
				cout<<"$ Connection has been closed."<<endl;
				connect_status = false;
				break;
			}
			case 3://询问时间
				reqiure_time();
				break;
			case 4://询问名称
				reqiure_name();
				break;
			case 5://询问用户列表
				require_list();
				break;
			case 6://给指定用户发送消息
				send_message();
				break;
			case 0:{//关闭连接并退出
				int iResult = shutdown(c_socket, SD_SEND);
				if (iResult == SOCKET_ERROR) {
					cout << "$ Disconnect failed" << endl;
					WSAGetLastError();
					closesocket(c_socket);
					WSACleanup();
				}
				CloseHandle(hThread);
				cout << "$ Connection has been closed.Bye" <<endl;
				connect_status = false;
				system("pause");
				exit(0);
			}
			default:
				cout << "$ Please choose correct operate" << endl;
			}
		}
		else {
			//未连接状态下
			switch (op) {
			case 0://退出
				printf("$ Bye\n");
				system("pause");
				exit(0);
			case 1://连接成功/失败反馈
				connect_status = connect_server();
				break;
			default:
				printf("$ Command Selection Error\n");
			}
		}
	}
	system("pause");
	return 0;
}