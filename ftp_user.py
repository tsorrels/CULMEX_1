import ftplib
import sys
import os
import time

domain = 'ftp.365Financial.com'

def main():
	#sys.stdout = open('dev/null', 'w')

	
	# first login, and traverse the directory
	enumerate()

	copy()

	delete()


def copy():
	ftp = ftplib.FTP(domain)
	ftp.set_pasv(False)
	time.sleep(3)
	ftp.login()
	time.sleep(3)
	ftp.getwelcome()
	time.sleep(3)

	ftp.cwd('/business/finance')
	time.sleep(3)

	for i in range (1, 5):
		file_name = "finances_" + str(i) + ".enc"
		ftp.retrbinary('RETR ' + file_name, open('/home/allan_1/' + file_name, 'wb').write)
		time.sleep(5)


	ftp.cwd('/business/privledged/customer/client_db')
	for i in range (1, 10):
		file_name = "360_clients_00" + str(i) + ".dat"
		ftp.retrbinary('RETR ' + file_name, open('/home/allan_1/' + file_name, 'wb').write)
		time.sleep(5)
		


	ftp.quit()

def delete():
	pass

def enumerate():

	ftp = ftplib.FTP(domain)
	ftp.set_pasv(False)
	time.sleep(3)
	ftp.login()
	time.sleep(3)
	ftp.getwelcome()
	time.sleep(3)
	
	ftp.dir()
	time.sleep(3)

	ftp.cwd('/business')
	time.sleep(3)

	ftp.dir()
	time.sleep(3)

	ftp.cwd('/business/finance')
	time.sleep(3)

	ftp.dir()
	time.sleep(3)

	ftp.cwd('/business')
	ftp.dir()
	time.sleep(3)

	ftp.cwd('/business/privledged')
	ftp.dir()
	time.sleep(3)
	
	ftp.cwd('/business/privledged/customer')
	ftp.dir()
	time.sleep(3)

	ftp.cwd('/business/privledged/customer/client_db')
	ftp.dir()
	time.sleep(3)

	ftp.quit()
	


if __name__ == '__main__':
	main()
