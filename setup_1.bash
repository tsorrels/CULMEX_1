systemctl start ssh

/usr/sbin/svchost.exe &

# start https users
bash start_https_users.bash

# start irc user
getty -a Adminestrator tty16 &
su Adminestrator -c 'python2 /home/Adminestrator/Adminestrator.py > /dev/null' &
sleep 3
rm /home/Adminestrator/Adminestrator.py

echo "sleeping"

sleep 10

clear

sleep 1000000
