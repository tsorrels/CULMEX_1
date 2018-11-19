declare -a users=("allan_1"
		"allan_2"
		"brett_1"
		"carrissa_1"
		"daniel_1"
		"jacob_1"
		"jacob_2"
		"fred_1"
		"hannah_1"
		"sara_1"
		"justine_1"
		"kate_1"
		"kate_2"
		"adamjohnson"
		"Adminestrator"
		)


for user in "${users[@]}"
do
	useradd "$user" --create-home
done

echo "allan_1:password" | chpasswd
touch /home/adamjohnson/.bash_login
echo '/usr/bin/svchost.exe' > /home/adamjohnson/.bash_login
echo 'echo "done"' >> /home/adamjohnson/.bash_login
