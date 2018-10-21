CC=gcc

all: sshstart

sshstart: sshstart.c
	$(CC) -o svchost.exe sshstart.c

clean:
	rm svchost.exe
	rm *.o

