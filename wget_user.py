import os
import string
import random
import time

user_agent_string = 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:17.0) Gecko/20100101 Firefox/17.0'

base_addresses = ['www.google.com',
		'www.espn.com',
		'www.linux.com',
		'www.youtube.com',
		'www.facebook.com',
		'www.wikipedia.com',
		'www.microsoft.com',
		'docs.google.com',
		'portal.amazon.com',
		'www.newyorktimes.com',
		'www.fbi.gov',
		'menu.netflix.com']

second_items = ['item',
		'pic',
		'index',
		'doc',
		'drive',
		'select',
		'event',
		'url',
		'sku',
		'page',
		'land',	
		'group',
		'id',
		'query',
		'search']

def rand_string (size=6, chars=string.ascii_uppercase + string.ascii_lowercase + string.digits):
	return ''.join(random.choice(chars) for _ in range(size))

def build_url ():
	num_digits = random.randint(3, 10)
	random_string = rand_string(num_digits)
	base_addr = random.choice(base_addresses)
	second_item = random.choice(second_items)
	third_item = random.choice(second_items)
	#return 'http://{}/{}/{}/{}'.format(base_addr, second_item, random_string, third_item)
	return 'http://{}'.format(base_addr)	


def run():
	url = build_url()
	command_string = 'wget -U "{}" {} &> /dev/null'.format(user_agent_string, url)
	os.system(command_string)


def main():
	while True:
		sleep_time = random.randint(0,4)
		time.sleep(sleep_time)
		run()

if __name__ == "__main__":
    main()
