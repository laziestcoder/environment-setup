#!/bin/bash

read -p "This script downloads and installs various softwares. Please check the script file before starting.
Do you want to continue? (Y/N): " yn
case $yn in
[Yy]*) echo "Thank you for continuting." ;;
[Nn]*)
  echo "Thank you. Installation aborted."
  exit
  ;;
esac

echo "Installing snapd ..."
sudo apt install snapd

#open JDK
#sudo apt install openjdk-11-jre-headless && sudo apt install default-jre && \

#VIM
read -p "Do you want to install VIM? (Y/N): " yn
case $yn in
[Yy]*) sudo apt install vim ;;
[Nn]*) echo "Thank you. VIM Installation aborted." ;;
esac

#Tweak Tool
read -p "Do you want to install Unity-Tweak-Tool? (Y/N): " yn
case $yn in
[Yy]*) sudo apt install unity &&
  sudo apt-get install unity-tweak-tool gnome-tweak-tool &&
  sudo apt install dconf-tools &&
  #gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
  #gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
  #gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode FIXED
  #gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 64
  #gsettings set org.gnome.shell.extensions.dash-to-dock unity-backlit-items true;;
  echo "Installation Unity-Tweak-Tool successfull." ;;
[Nn]*) echo "Thank you. Unity-Tweak-Tool Installation aborted." ;;
esac

#Chrome
read -p "Do you want to install Chrome? (Y/N): " yn
case $yn in
[Yy]*) sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
  sudo dpkg -i google-chrome-stable_current_amd64.deb ;;
[Nn]*) echo "Thank you. Chrome Installation aborted." ;;
esac

#Intellij-Idea
read -p "Do you want to Intellij-Idea-Ultimate --classic? (Y/N): " yn
case $yn in
[Yy]*) sudo snap install intellij-idea-ultimate --classic ;;
[Nn]*) echo "Thank you. Intellij-Idea-Ultimate Installation aborted." ;;
esac

#PHPStorm
read -p "Do you want to PHPStorm --classic? (Y/N): " yn
case $yn in
[Yy]*) sudo snap install phpstorm --classic ;;
[Nn]*) echo "Thank you. PHPStorm Installation aborted." ;;
esac

#slack
read -p "Do you want to Slack --classic? (Y/N): " yn
case $yn in
[Yy]*) sudo snap install slack --classic ;;
[Nn]*) echo "Thank you. Slack Installation aborted." ;;
esac

#Python3
read -p "Do you want to Python38? (Y/N): " yn
case $yn in
[Yy]*) sudo snap install python38 ;;
[Nn]*) echo "Thank you. Python38 Installation aborted." ;;
esac

#GIT
read -p "Do you want to Git? (Y/N): " yn
case $yn in
[Yy]*) sudo apt install git ;;
[Nn]*) echo "Thank you. Git Installation aborted." ;;
esac

#Dukto
read -p "Do you want to Dukto? (Y/N): " yn
case $yn in
[Yy]*) sudo apt install gdebi &&
  wget download.opensuse.org/repositories/home:/colomboem/xUbuntu_12.04/amd64/dukto_6.0-1_amd64.deb &&
  sudo gdebi dukto_6.0-1_amd64.deb ;;
[Nn]*) echo "Thank you. Dukto Installation aborted." ;;
esac

#Download Oracle JDK 11
while true; do
  read -p "Do you want to download the oracle jdk.11.*.tar.gz in your 'Downloads' folder? (Y/N): " yn
  case $yn in
  [Yy]*)
    wget --load-cookies /tmp/cookies.txt \
    "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1DKQFlXWmcbMeP9w-UcGyUVSPbXgUFDg3' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1DKQFlXWmcbMeP9w-UcGyUVSPbXgUFDg3" \
    -O jdk-11.0.6_linux-x64_bin.tar.gz && rm -rf /tmp/cookies.txt
    break;;
  [Nn]*)
    echo "Downloaded the oracle jdk.11.0.6.tar.gz canceled. Thank you."
    break
    ;;
  esac
done

#Oracle JDK
while true; do
  read -p "Do you have want to install oracle jdk.11.*.tar.gz? (Y/N): " yn
  case $yn in
  [Yy]*)
      sudo mkdir -p /var/cache/oracle-jdk11-installer-local/ &&
      sudo cp jdk-11.*.tar.gz /var/cache/oracle-jdk11-installer-local/ &&
      sudo add-apt-repository ppa:linuxuprising/java &&
      sudo apt install oracle-java11-set-default-local
    break
    ;;
  [Nn]*)
    echo "Please download the oracle jdk.11.*.tar.gz and run the script angain. Thank you."
    break
    ;;
  esac
done

#Maven
while true; do
  read -p "Do you have JAVA installed in your system? (Y/N): " yn
  case $yn in
  [Yy]*)
    sudo apt install maven -y &&
      sudo touch mavenenv.sh &&
      sudo chmod 777 mavenenv.sh &&
      sudo echo "export JAVA_HOME=/usr/lib/jvm/default-java" >mavenenv.sh &&
      sudo echo "export M2_HOME=/opt/maven" >>mavenenv.sh &&
      sudo echo "export PATH=${M2_HOME}/bin:${PATH}" >>mavenenv.sh &&
      sudo mv mavenenv.sh /etc/profile.d/mavenenv.sh &&
      sudo chmod +x /etc/profile.d/mavenenv.sh &&
      source /etc/profile.d/mavenenv.sh
    break
    ;;
  [Nn]*)
    echo "Please download JAVA and install then run the script angain. Thank you."
    break
    ;;
  esac
done

#PIP
read -p "Do you want to Python3 PIP? (Y/N): " yn
case $yn in
[Yy]*) sudo apt install python3-pip -y ;;
[Nn]*) echo "Thank you. Python3 PIP Installation aborted." ;;
esac

#NodeJS and NPM
read -p "Do you want to NodeJs and NPM? (Y/N): " yn
case $yn in
[Yy]*) sudo apt install nodejs -y && sudo apt install npm -y ;;
[Nn]*) echo "Thank you. NodeJs and NPM Installation aborted." ;;
esac

#apt-transport-https ca-certificates curl software-properties-common
read -p "Do you want to install Unity-Tweak-Tool? (Y/N): " yn
case $yn in
[Yy]*) echo "Installing ... apt-transport-https ca-certificates curl software-properties-common.. " &&
  sudo apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common &&
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" &&
  sudo apt-get update ;;
[Nn]*) echo "Thank you. apt-transport-https, ca-certificates, curl, software-properties-common packages Installation aborted." ;;
esac

#Postman
read -p "Do you want to Postman? (Y/N): " yn
case $yn in
[Yy]*) sudo snap install postman ;;
[Nn]*) echo "Thank you. Postman Installation aborted." ;;
esac

#Docker
read -p "Do you want to Docker? (Y/N): " yn
case $yn in
[Yy]*) sudo apt-get install docker-ce -y && apt-cache madison docker-ce ;;
[Nn]*) echo "Thank you. Docker Installation aborted." ;;
esac

#Docker-Compose
read -p "Do you want to Docker-Compose? (Y/N): " yn
case $yn in
[Yy]*) sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" \
  -o /usr/local/bin/docker-compose &&
  sudo chmod +x /usr/local/bin/docker-compose &&
  sudo ln -fs /usr/local/bin/docker-compose /usr/bin/docker-compose ;;
[Nn]*) echo "Thank you. Docker-Compose Installation aborted." ;;
esac

#ngrok
#write installation commands for ngrok

echo "Updating system and installing upgraded files ..."
sudo apt update -y && sudo apt upgrade -y &&
  echo "Installation Successful."
echo "Thank You for Using Shell Script."
