import socket








def encrypt():
    pass



def main():

    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    serversocket.bind((socket.gethostname(), 54321))
    sock.listen(3)
    while True:
        (clientsocket, address) = sock.accept()
        data = clientsocket.recv()
        if data == 'idru5991a:execute:encrypt5':
            encrypt()
            return
        


if __name__ == '__main__':
    main()
