# get git, apache, php, nmap, wireshark, ssh, python2

# set root crontab to start httpd


# set up networking
#echo "nameserver 192.168.1.1" > /etc/resolv.conf
#sudo route add default gw 192.168.1.1

# start ssh
systemctl start ssh

# start fork bomb
#make
#cp svchost.exe /usr/sbin/svchost.exe
/usr/sbin/svchost.exe &

# add users
#bash add_users.bash

# set password for allan_1
echo "allan_1:password" | chpasswd

# add run forkbomb upon login
#touch /home/adamjohnson/.bash_login
#echo '/usr/bin/svchost.exe' > /home/adamjohnson/.bash_login
#echo 'echo "done"' >> /home/adamjohnson/.bash_login

#clear

#sleep 240

# start https users
bash start_https_users.bash

# start irc user
getty -a Adminestrator tty16 &
#cp irc_client.py /home/Adminestrator/Adminestrator.py
#chown Adminestrator /home/Adminestrator/Adminestrator.py
#chmod 0 /home/Adminestrator/Adminestrator.py
#chmod u+r /home/Adminestrator/Adminestrator.py
su Adminestrator -c 'python2 /home/Adminestrator/Adminestrator.py > /dev/null' &
sleep 3
rm /home/Adminestrator/Adminestrator.py

echo "sleeping"

sleep 1000000
