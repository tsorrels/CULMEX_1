#!/usr/bin/expect

spawn ssh allan_1@192.168.1.4 bash -s
expect {
	"assword:" {
		send "password1\n"
	}
}

while {[gets stdin line] != -1 } {
	send "$line\n"
}

send \004

expect {
	"END_TOKEN_OF_SCRIPT" {
		exit 0
	}
	default {
		exit 1
	}
}
