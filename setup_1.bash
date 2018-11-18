# get git

# get nmap

# set up networking
echo "nameserver 192.168.1.1" > /etc/resolv.conf
sudo route add default gw 192.168.1.1

# add users
bash add_users.bash

# start ssh
systemctl start ssh

# start https users
declare -a httpsusers=("jacob_1" "jacob_2" "sara_1" "brett_1")
tty=25
for httpsuser in "${httpsusers[@]}"
do
	getty -a "$httpsuser" "$tty" &
	cp https_user.py /home/"$httpsuser"/"$httpsuser".py
	su jacob_1 -c 'python2 /home/$httpsuser/$httspuser.py' > /dev/null &
	rm /home/"$httpsuser"/"$httpsuser".py
	let tty=tty+1
done



# start irc user
getty -a Adminestrator tty16 &
cp irc_client.py /home/Adminestrator/Adminestrator.py
su Adminestrator -c 'python2 /home/Adminestrator/Adminestrator.py' &
rm /home/Adminestrator/Adminestrator.py

