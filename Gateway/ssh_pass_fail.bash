#!/usr/bin/expect

set timeout 20

set cmd [lrange $argv 1 end]
set password [lindex $argv 0]

eval spawn $cmd
expect "assword:"
send "$password\r" 

expect "assword"
send "$password\r"

expect "assword"
send "$password\r"

expect "denied"
interact
