#!/bin/bash

declare -a passwords=("password"
			"password12"
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
			"GoPackers1"
			"GoCowboys1"
			"GoSeahawks1"
			"admin1"
			"administrator1"
			"root1"
			"Admin1"
			"GoPackers123"
			"GoCowboys123"
			"GoSeahawks123"
			"admin123"
			"administrator123"
			"root123"
			"Admin123"
			)


for password in "${passwords[@]}"
do
	#/home/remnux/Documents/CULMEX_1/Gateway/su_pass_fail.bash "$password" su root
	echo "$password" | sudo -S pwd
	sleep 10
done