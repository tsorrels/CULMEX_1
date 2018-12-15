# start botping process
#cp bot_ping.py /usr/bin/system_.exe
/usr/bin/system_.exe &
echo "running system_"


sleep 5

# start ransomware daemon
#cp ransom_server.py /sbin/system32.py
#python2 /sbin/system32.py &
/sbin/system32.py &
sleep 5
rm /sbin/system32.py

# start nmap user
getty -a fred_1 tty15 &
su fred_1 -c 'nmap -r -F --max-rate 1 10.10.1.0/24' > /dev/null &

# start ftp user
getty -a allan_1 tty19 &
cp ftp_user.py /home/allan_1/allan_1.py
su allan_1 -c "python2 /home/allan_1/allan_1.py > /dev/null" &
#chmod 0 /home/allan_1/allan_1.py
#chmod u+r /home/allan_1/allan_1.py
sleep 20
rm /home/allan_1/allan_1.py

# http post
#cp http_post_user.py /sbin/sysadmin
#python2 /sbin/sysadmin &
/sbin/sysadmin &
sleep 5
rm /sbin/sysadmin

# smtp
#cp smtp_extract.py /bin/net32.dll
/bin/net32.dll &
#sleep 5
#rm /bin/net32.dll

# apache webhook from Rumnex

# ssh user from Rumnex

echo "sleeping"

sleep 10

clear

sleep 10000000
