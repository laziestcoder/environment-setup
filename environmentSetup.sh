#!/bin/bash

read -p "This script downloads and installs various softwares. Please check the script file before starting.
Do you want to continue? (Y/N): " yn
    case $yn in
        [Yy]* ) echo "Thank you for continuting.";;
        [Nn]* ) echo "Thank you. Installation aborted."; exit;;
    esac

sudo apt install snapd

#open JDK
#sudo apt install openjdk-11-jre-headless && sudo apt install default-jre && \

#VIM
sudo apt install vim && \

#Tweak Tool
sudo apt install unity
sudo apt-get install unity-tweak-tool gnome-tweak-tool
sudo apt install dconf-tools
#gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
#gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
#gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode FIXED
#gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 64
#gsettings set org.gnome.shell.extensions.dash-to-dock unity-backlit-items true

#Chrome
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
sudo dpkg -i google-chrome-stable_current_amd64.deb && \

#Intellij-Idea
sudo snap install intellij-idea-ultimate --classic && \

#PHPStorm
sudo snap install phpstorm --classic && \
#slack
sudo snap install slack --classic && \

#Python3
sudo snap install python38  && \

#GIT
sudo apt install git && \

#Dukto
sudo apt install gdebi  && \
wget download.opensuse.org/repositories/home:/colomboem/xUbuntu_12.04/amd64/dukto_6.0-1_amd64.deb && \
sudo gdebi dukto_6.0-1_amd64.deb  && \

#Maven
sudo apt install maven -y
sudo touch mavenenv.sh
sudo chmod 777 mavenenv.sh
sudo echo "export JAVA_HOME=/usr/lib/jvm/default-java" >  mavenenv.sh && \
sudo echo "export M2_HOME=/opt/maven" >> mavenenv.sh && \
sudo echo "export PATH=${M2_HOME}/bin:${PATH}" >> mavenenv.sh  && \
sudo mv mavenenv.sh /etc/profile.d/mavenenv.sh
sudo chmod +x /etc/profile.d/mavenenv.sh && \
source /etc/profile.d/mavenenv.sh && \

#PIP
sudo apt install python3-pip -y && \

#NodeJS and NPM
sudo apt install nodejs -y && sudo apt install npm -y && \

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common && \

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \

sudo apt-get update

#Oracle JDK
while true; do
    read -p "Do you have the oracle jdk.11.*.tar.gz in your 'Downloads' folder? (Y/N): " yn
    case $yn in
        [Yy]* ) cd ~/Downloads && \
          sudo mkdir -p /var/cache/oracle-jdk11-installer-local/ && \
          sudo cp jdk-11.*.tar.gz /var/cache/oracle-jdk11-installer-local/ && \
          sudo add-apt-repository ppa:linuxuprising/java && \
          sudo apt install oracle-java11-set-default-local; break;;
        [Nn]* ) echo "PLease download the oracle jdk.11.*.tar.gz and run the script angain. Thank you."; break;;
    esac
done

#Postman
sudo snap install postman

#Docker
sudo apt-get install docker-ce -y && \
apt-cache madison docker-ce && \

#Docker-Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" \
      -o /usr/local/bin/docker-compose && \
sudo chmod +x /usr/local/bin/docker-compose && \
sudo ln -fs /usr/local/bin/docker-compose /usr/bin/docker-compose && \


#ngrok

sudo apt update -y && sudo apt upgrade -y && \

echo "Installation Successful."
echo "Thank You for Using Shell Script."
