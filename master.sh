#!/bin/bash
function move() {
    # code here
    cd /etc
}
move
sudo echo "172.0.1.1 machiel-l" | sudo tee hosts

sudo apt-get install salt-master -y
sudo apt-get install salt-minion -y

sudo apt-get install nagios3 -y

sudo apt-get install syslog-ng


sudo cp saltstack/syslog.conf /etc/syslog-ng/conf.d/
