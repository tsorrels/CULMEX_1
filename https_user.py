import urllib2
import ssl
import string
import random
import time

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
	return 'https://{}/{}/{}/{}'.format(base_addr, second_item, random_string, third_item)
	

def run():
	default_context = ssl.create_default_context()
	default_context.check_hostname = False
	default_context.verify_mode = ssl.CERT_NONE

	url = build_url()

	f = urllib2.urlopen(url, context = default_context)
	f.read()

def main():
	while True:
		sleep_time = random.randint(0,4)
		time.sleep(sleep_time)
		run()

if __name__ == "__main__":
    main()
