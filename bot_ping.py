#!/usr/bin/env python2

from socket import *
import random
import time

ip_addresses = []

ip_class_c = ['217.24.176.', '217.27.128.', '217.28.72.', '217.28.208']

payload = "{\n\t'botid' : 'idru5991a'\n\t'ipaddress' : '192.168.1.5'\n\t'rat' : 'true'\n}"

port = 15293


def populate_ips():
    for c in ip_class_c:
	for i in range(random.randint(3,10), random.randint(15, 20)):
	    ip_addr = c + str(i)
	    ip_addresses.append(ip_addr)

	for i in range(random.randint(101,105), random.randint(115, 125)):
	    ip_addr = c + str(i)
	    ip_addresses.append(ip_addr)


def main():
    populate_ips()
    client_socket = socket(AF_INET, SOCK_DGRAM)
    for ip in ip_addresses:
	try:
	    addr = (ip, port)
	    client_socket.sendto(payload, addr)
	    time.sleep(30)
	except:
	    pass



if __name__ == "__main__":
    main()
