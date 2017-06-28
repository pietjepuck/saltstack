#sudo apt update && sudo apt-get upgrade

function move() {
    # code here
    cd /etc
}
move
sudo echo "172.0.1.1 machiel-minoin" | sudo tee hosts
sudo apt-get install salt-minion -y

function move2() {
    # code here
    cd ~/home/ubuntu
}

sudo git clone https://github.com/pietjepuck/saltstack.git 
sudo cp -f saltstack/minion /etc/salt
sudo salt-minion -d

