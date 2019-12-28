#!/bin/bash

sudo apt install snapd

#sudo apt install openjdk-11-jre-headless && sudo apt install default-jre && \

sudo snap install intellij-idea-ultimate --classic && \

sudo snap install slack --classic && \

sudo snap install python38 && \

sudo apt install git && \

sudo apt install gdebi -y && \

wget download.opensuse.org/repositories/home:/colomboem/xUbuntu_12.04/amd64/dukto_6.0-1_amd64.deb && \

sudo gdebi dukto_6.0-1_amd64.deb && \

sudo apt install maven -y

sudo touch mavenenv.sh
sudo chmod 777 mavenenv.sh
sudo echo "export JAVA_HOME=/usr/lib/jvm/default-java" >  mavenenv.sh && \
sudo echo "export M2_HOME=/opt/maven" >> mavenenv.sh && \
sudo echo "export PATH=${M2_HOME}/bin:${PATH}" >> mavenenv.sh  && \
sudo mv mavenenv.sh /etc/profile.d/mavenenv.sh
sudo chmod +x /etc/profile.d/mavenenv.sh && \
source /etc/profile.d/mavenenv.sh && \

sudo apt install python3-pip -y && \

sudo apt install nodejs -y && sudo apt install npm -y && \

cd ~/Downloads && \
sudo mkdir -p /var/cache/oracle-jdk11-installer-local/ && \
sudo cp jdk-11.0.5_linux-x64_bin.tar.gz /var/cache/oracle-jdk11-installer-local/ && \
sudo add-apt-repository ppa:linuxuprising/java && \
sudo apt install oracle-java11-set-default-local && \

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common && \

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \

sudo snap install postman

sudo apt-get install docker-ce -y && \

apt-cache madison docker-ce && \

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \

sudo chmod +x /usr/local/bin/docker-compose && \

sudo ln -fs /usr/local/bin/docker-compose /usr/bin/docker-compose && \

sudo apt update -y && sudo apt upgrade -y && \

echo "Installation Successful."
