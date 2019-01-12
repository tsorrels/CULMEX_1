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
	mkdir /home/$user/Documents
	chown $user /home/$user/Documents
	mkdir /home/$user/Downloads
	chown $user /home/$user/Downloads
	mkdir /home/$user/Desktop
	chown $user /home/$user/Desktop
	mkdir /home/$user/Admin
	chown $user /home/$user/Admin
done


