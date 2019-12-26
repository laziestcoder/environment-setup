#!/bin/bash

#sudo apt install openjdk-11-jre-headless && sudo apt install default-jre && \

sudo snap install intellij-idea-ultimate --classic && \

sudo snap install slack --classic && \

sudo snap install python38 && \

sudo apt install git && \

sudo apt install gdebi && \

wget download.opensuse.org/repositories/home:/colomboem/xUbuntu_12.04/amd64/dukto_6.0-1_amd64.deb && \

sudo gdebi dukto_6.0-1_amd64.deb && \

sudo wget https://www-us.apache.org/dist/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.tar.gz && \

sudo tar -xvzf apache-maven-3.6.0-bin.tar.gz && \

sudo mv apache-maven-3.6.0 maven && \

sudo echo "export JAVA_HOME=/usr/lib/jvm/default-java" >>  /etc/profile.d/mavenenv.sh && \

sudo echo "export M2_HOME=/opt/maven" >> /etc/profile.d/mavenenv.sh && \

echo "export PATH=${M2_HOME}/bin:${PATH}" >> /etc/profile.d/mavenenv.sh  && \

sudo chmod +x /etc/profile.d/mavenenv.sh && \

source /etc/profile.d/mavenenv.sh && \

sudo apt install python3-pip && \

sudo apt install nodejs && sudo apt install npm && \

sudo apt update && sudo apt upgrade && \
cd Downloads/ && \
sha256sum jdk-11.0.5_linux-x64* && \
sudo mkdir -p /var/cache/oracle-jdk11-installer-local/ && \
sudo cp jdk-11.0.5_linux-x64_bin.tar.gz /var/cache/oracle-jdk11-installer-local/ && \
sudo add-apt-repository ppa:linuxuprising/java && \
sudo apt-get update  && \
sudo apt install oracle-java11-set-default-local && \

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common && \

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" && \

sudo apt-get install docker-ce && \

apt-cache madison docker-ce && \

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
sudo chmod +x /usr/local/bin/docker-compose && \
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose && \

sudo apt update && sudo apt upgrade && \

echo "${GREEN}Installation ${GREEN}Successful." 
