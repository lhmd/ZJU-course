#pragma comment(lib,"ws2_32.lib")
#pragma warning(disable:4996)

#define _CRT_SECURE_NO_WARINGS

#include <cstdio>
#include<iostream>
#include<string>
#include<WinSock2.h>
#include<ws2tcpip.h>
#include<ctime>
#include<chrono>
#include<vector>
#include<sstream>
#define MaxBufSize 1024
using namespace std;

const int PORT = 6034;
struct Client {
	SOCKET* sock;
	int port;
	char clientIP[INET_ADDRSTRLEN];
};
std::vector<Client> clients;

DWORD WINAPI handle_client(LPVOID arg) {
	SOCKET* ClientSocket = (SOCKET*)arg;
	int cli_port=1;
	char cli_IP[INET_ADDRSTRLEN];
	for (auto iter : clients) {
		if (iter.sock == ClientSocket) {
			cli_port = iter.port;
			strcpy(cli_IP, iter.clientIP);
			break;
		}
	}
	std::cout << "Client" << cli_IP << ":" << cli_port << "connected" << std::endl;
	char RecvBuf[MaxBufSize];
	char SendBuf[MaxBufSize];
	while (1) {
		int status = recv(*ClientSocket, RecvBuf, sizeof(RecvBuf), 0);
		if (status > 0) {
			std::cout << "[" << cli_IP << ":" << cli_port << "]: " << RecvBuf << std::endl;
			switch (RecvBuf[0])
			{
			case 't':
			{
				auto currentTime = std::chrono::system_clock::now();
				std::time_t time = std::chrono::system_clock::to_time_t(currentTime);
				char* now = std::ctime(&time);
				strcpy(SendBuf, "Now time is ");
				strcpy((SendBuf + 12), now);
				if (send(*ClientSocket, SendBuf, sizeof(SendBuf), 0)<0) {
					std::cout << "Send time to client " << "[" << cli_IP << ":" << cli_port << "] " << "failed" << std::endl;
				}
				std::cout << "Now time: " << now << " send to client " << "[" << cli_IP << ":" << cli_port << "] " << std::endl;
				memset(SendBuf, 0, sizeof(SendBuf));
				break;
			}
			case 'n':
			{
				DWORD ComputerNameLength = MAX_COMPUTERNAME_LENGTH + 1;
				strcpy(SendBuf, "My computer name is ");

				TCHAR t_name[MAX_COMPUTERNAME_LENGTH + 1];
				GetComputerName(t_name, &ComputerNameLength); //获取本机名称
				char name[MAX_COMPUTERNAME_LENGTH + 1];
				wcstombs(name, t_name, MAX_COMPUTERNAME_LENGTH + 1);
				strcat(SendBuf + 20, name);

				if (send(*ClientSocket, SendBuf, sizeof(SendBuf), 0)<0) {
					std::cout << "Send name to client " << "[" << cli_IP << ":" << cli_port << "] " << "failed" << std::endl;
				}
				std::cout << "My name: " << name << " send to client " << "[" << cli_IP << ":" << cli_port << "] " << std::endl;
				memset(SendBuf, 0, sizeof(SendBuf));
				break;
			}
			case 'l':
			{
				std::stringstream ss;
				for (auto client : clients) {
					ss << client.clientIP << ":" << client.port << std::endl;
				}
				std::string str = ss.str();
				strcpy(SendBuf, str.c_str());

				if (send(*ClientSocket, SendBuf, sizeof(SendBuf), 0)<0) {
					std::cout << "Send list to client " << "[" << cli_IP << ":" << cli_port << "] " << "failed" << std::endl;
				}
				std::cout << "My client list: " << std::endl << SendBuf << std::endl << " send to client " << "[" << cli_IP << ":" << cli_port << "] " << std::endl;
				memset(SendBuf, 0, sizeof(SendBuf));
				break;
			}
			case 's':
			{
				// 要发送的客户端IP地址、端口号、消息 例如：127.0.0.1:6034 hello
				std::string recvmsg(RecvBuf);
				std::string send_addr = recvmsg.substr(1, recvmsg.find(":")-1);
				std::string send_port = recvmsg.substr(recvmsg.find(":") + 1, recvmsg.find(" ") - recvmsg.find(":") - 1);
				std::string send_msg = recvmsg.substr(recvmsg.find(" ") + 1);
				bool flag = false;
				for (auto iter : clients) {
					if (iter.clientIP == send_addr && iter.port == std::stoi(send_port)) {
						flag = true;
						std::stringstream ss;
						ss << cli_IP << ":" << cli_port << " send to you:" << send_msg << std::endl;
						std::string str = ss.str();
						strcpy(SendBuf, str.c_str());
						int send_status = send(*iter.sock, SendBuf, sizeof(SendBuf), 0);
						if (send_status<=0) {
							std::cout << "Send message failed!" << std::endl;
							char info[] = "Send failed!";
							send(*ClientSocket, info, sizeof(info), 0);
						}
						else {
							std::cout << "Send message success!" << std::endl;
							char info[] = "Successfully sent!";
							send(*ClientSocket, info, sizeof(info), 0);
						}
						break;
					}
				}
				memset(SendBuf, 0, sizeof(SendBuf));
				break;
			}
			default:
				std::cout << "Undefined Behavior" << std::endl;
				break;
			}

			memset(RecvBuf, 0, sizeof(RecvBuf));
		}
	}
	closesocket(*ClientSocket);
	free(ClientSocket);
	return 0;
}

int main() {
	WSAData wsd;
	WSAStartup(MAKEWORD(2, 2), &wsd);
	SOCKET ListenSocket = socket(AF_INET, SOCK_STREAM, 0);
	SOCKADDR_IN ListenAddr;
	ListenAddr.sin_family = AF_INET;
	ListenAddr.sin_addr.S_un.S_addr = INADDR_ANY;
	ListenAddr.sin_port = htons(PORT);
	bind(ListenSocket, (LPSOCKADDR)&ListenAddr, sizeof(ListenAddr));
	if (listen(ListenSocket, 20)) {
		std::cout << "Error listening " << std::endl;
	}
	else {
		std::cout << "Listening success, waiting for connect ..." << std::endl;
	}

	while (1) {
		SOCKET* ClientSocket = new SOCKET;
		ClientSocket = (SOCKET*)malloc(sizeof(SOCKET));

		// 接受连接
		*ClientSocket = accept(ListenSocket, 0, 0);

		// 获取客户端地址信息
		sockaddr_in clientAddr;
		int addrLen = sizeof(clientAddr);
		struct Client cli;

		if (getpeername(*ClientSocket, (struct sockaddr*)&clientAddr, &addrLen) == 0) {
			char clientIP[INET_ADDRSTRLEN];
			inet_ntop(AF_INET, &(clientAddr.sin_addr), clientIP, INET_ADDRSTRLEN);
			int clientPort = ntohs(clientAddr.sin_port);
			strcpy(cli.clientIP, clientIP);
			cli.port = clientPort;
			cli.sock = ClientSocket;
		}
		else {
			perror("getpeername");
		}
		// 将客户端信息存储到 clients
		clients.push_back(cli);
		CreateThread(NULL, 0, &handle_client, ClientSocket, 0, NULL);
	}
	closesocket(ListenSocket);
	WSACleanup();
	return(0);
}