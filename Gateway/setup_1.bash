# start inetsim
inetsim --data /home/remnux/Desktop/inetsim_configurations/iteration_1/data --conf /home/remnux/Desktop/inetsim_configurations/iteration_1/inetsim.conf &

sleep 10

# accept all-ips
bash /opt/remnux-scripts/accept-all-ips start

# sleep five minutes
sleep 300

# start brute force guessing ssh user
bash ./ssh_brute_force.bash &

# sleep forever
sleep 100000