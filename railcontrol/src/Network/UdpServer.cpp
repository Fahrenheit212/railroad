/*
RailControl - Model Railway Control Software

Copyright (c) 2017-2023 Dominik (Teddy) Mahrer - www.railcontrol.org

RailControl is free software; you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation; either version 3, or (at your option) any
later version.

RailControl is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with RailControl; see the file LICENCE. If not see
<http://www.gnu.org/licenses/>.
*/

#include <arpa/inet.h>
#include <cstring>		//memset
#include <netdb.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <unistd.h>

#include <iostream>

#include "Network/Select.h"
#include "Network/UdpClient.h"
#include "Network/UdpServer.h"
#include "Utils/Utils.h"

namespace Network
{
	UdpServer::UdpServer(const std::string& address,
		const unsigned short port,
		const std::string& threadName)
	:	logger(Logger::Logger::GetLogger(threadName)),
		run(false),
		error(""),
	 	address(address),
	 	port(port),
	 	serverSocket(0),
	 	threadName(threadName)
	{
	}

	UdpServer::~UdpServer()
	{
		TerminateUdpServer();
	}

	void UdpServer::StartUdpServer()
	{
		if (run)
		{
			return;
		}

		run = true;

		struct sockaddr_in6 serverAddr6;
		memset(reinterpret_cast<char*>(&serverAddr6), 0, sizeof(serverAddr6));
		serverAddr6.sin6_family = AF_INET6;

		if (address.compare("localhost") == 0)
		{
			serverAddr6.sin6_addr = IN6ADDR_LOOPBACK_INIT;
		}
		else
		{
			serverAddr6.sin6_addr = in6addr_any;
		}
		serverAddr6.sin6_port = htons(port);
		SocketCreateBindListen(serverAddr6.sin6_family, reinterpret_cast<struct sockaddr*>(&serverAddr6));

#ifdef __CYGWIN__
		struct sockaddr_in serverAddr4;
		memset(reinterpret_cast<char*>(&serverAddr4), 0, sizeof(serverAddr4));
		serverAddr4.sin_family = AF_INET;
		if (address.compare("localhost") == 0)
		{
			serverAddr4.sin_addr.s_addr = inet_addr("127.0.0.1");
		}
		else
		{
			serverAddr4.sin_addr.s_addr = htonl(INADDR_ANY);
		}
		serverAddr4.sin_port = htons(port);
		SocketCreateBindListen(serverAddr4.sin_family, reinterpret_cast<struct sockaddr*>(&serverAddr4));
#endif
	}

	void UdpServer::SocketCreateBindListen(int family, struct sockaddr* address)
	{
		serverSocket = socket(family, SOCK_DGRAM, 0);
		if (serverSocket < 0)
		{
			error = "Unable to create socket for udp server. Unable to serve clients.";
			return;
		}

		int on = 1;
		int intResult = setsockopt(serverSocket, SOL_SOCKET, SO_REUSEADDR, (const void*) &on, sizeof(on));
		if (intResult < 0)
		{
			error = "Unable to set tcp server socket option SO_REUSEADDR.";
			close(serverSocket);
			return;
		}

		intResult = bind(serverSocket, address, family == AF_INET ? sizeof(struct sockaddr_in) : sizeof(struct sockaddr_in6));
		if (intResult < 0)
		{
			error = "Unable to bind socket for udp server to port. Unable to serve clients.";
			close (serverSocket);
			return;
		}

		if (!run)
		{
			close(serverSocket);
			return;
		}
		serverThreads.push_back(std::thread(&Network::UdpServer::Worker, this));
	}

	void UdpServer::TerminateUdpServer()
	{
		run = false;

		while (serverThreads.size())
		{
			std::thread& serverThread = serverThreads.back();
			serverThread.join();
			serverThreads.pop_back();
		}
		for (auto client : clients)
		{
			delete client;
		}
		clients.clear();
	}

	void UdpServer::Worker()
	{
		Utils::Utils::SetThreadName(threadName);
		fd_set set;
		struct timeval tv;
		struct sockaddr_storage clientAddress;
		socklen_t clientAddressLength = sizeof(clientAddress);
		while (run == true)
		{
			// wait for data and abort on shutdown
			int ret;
			do
			{
				FD_ZERO(&set);
				FD_SET(serverSocket, &set);
				tv.tv_sec = 1;
				tv.tv_usec = 0;
				ret = TEMP_FAILURE_RETRY(select(FD_SETSIZE, &set, NULL, NULL, &tv));

				if (run == false)
				{
					return;
				}
			} while (ret == 0);

			if (ret < 0)
			{
				continue;
			}

			unsigned char buffer[1472]; // 1472 = Max UDP data size
			memset(reinterpret_cast<char*>(&clientAddress), 0, sizeof(clientAddressLength));
			ssize_t size = recvfrom(serverSocket, buffer, sizeof(buffer), 0, reinterpret_cast<struct sockaddr*>(&clientAddress), &clientAddressLength);
			UdpClient* client = GetClient(&clientAddress);
			client->Work(buffer, size);
			CleanUpClients();
		}
	}

	UdpClient* UdpServer::GetClient(const struct sockaddr_storage* clientAddress)
	{
		for (auto client : clients)
		{
			if (client->IsClient(clientAddress))
			{
				client->Update();
				return client;
			}
		}
		UdpClient* newClient = UdpClientFactory(serverSocket, clientAddress);
		clients.push_back(newClient);
		return newClient;
	}

	void UdpServer::CleanUpClients()
	{
		for (std::vector<UdpClient*>::iterator it = clients.begin(); it != clients.end();)
		{
			UdpClient* client = *it;
			if (client->Terminated() || client->TimedOut())
			{
				clients.erase(it);
				delete client;
			}
			else
			{
				++it;
			}
		}
	}
}
