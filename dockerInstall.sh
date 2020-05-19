sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"
sudo apt-get update && sudp apt upgrade
sudo apt-get install docker-ce
sudo apt-get install docker-ce=18.06.3~ce~3-0~ubuntu
sudo groupadd docker
sudo usermod -aG docker ${USER}
#newgrp -
sudo apt install containerd
sudo apt install docker.io
sudo groupadd dockerd
sudo usermod -aG dockerd ${USER}
#newgrp -
