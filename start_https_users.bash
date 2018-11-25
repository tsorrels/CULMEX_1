# start https users
echo "start httpusers"
declare -a httpsusers=("jacob_1" "jacob_2" "sara_1" "brett_1")
tty=25
for httpsuser in "${httpsusers[@]}"
do
	getty -a "$httpsuser" tty"$tty" &
	cp https_user.py /home/"$httpsuser"/"$httpsuser".py
	chown "$httpsuser" /home/"$httpsuser"/"$httpsuser".py
	command="python2 /home/$httpsuser/$httpsuser.py"
	su "$httpsuser" -c "$command" > /dev/null &
	rm /home/"$httpsuser"/"$httpsuser".py
	let tty=tty+1
done
