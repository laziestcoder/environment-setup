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
read -p "Do you want to install Intellij-Idea-Ultimate --classic? (Y/N): " yn
case $yn in
[Yy]*) sudo snap install intellij-idea-ultimate --classic ;;
[Nn]*) echo "Thank you. Intellij-Idea-Ultimate Installation aborted." ;;
esac

#PHPStorm
read -p "Do you want to install PHPStorm --classic? (Y/N): " yn
case $yn in
[Yy]*) sudo snap install phpstorm --classic ;;
[Nn]*) echo "Thank you. PHPStorm Installation aborted." ;;
esac

#slack
read -p "Do you want to install Slack --classic? (Y/N): " yn
case $yn in
[Yy]*) sudo snap install slack --classic ;;
[Nn]*) echo "Thank you. Slack Installation aborted." ;;
esac

#SKYPE
read -p "Do you want to install Skype ? (Y/N): " yn
case $yn in
[Yy]*) wget https://go.skype.com/skypeforlinux-64.deb && \
       sudo apt install ./skypeforlinux-64.deb ;;
[Nn]*) echo "Thank you. Skype Installation aborted." ;;
esac

#Python3
read -p "Do you want to install Python38? (Y/N): " yn
case $yn in
[Yy]*) sudo snap install python38 ;;
[Nn]*) echo "Thank you. Python38 Installation aborted." ;;
esac

#GIT
read -p "Do you want to install Git? (Y/N): " yn
case $yn in
[Yy]*) sudo apt install git ;;
[Nn]*) echo "Thank you. Git Installation aborted." ;;
esac

#Dukto
read -p "Do you want to install Dukto? (Y/N): " yn
case $yn in
[Yy]*) sudo apt install gdebi &&
  wget download.opensuse.org/repositories/home:/colomboem/xUbuntu_12.04/amd64/dukto_6.0-1_amd64.deb &&
  sudo gdebi dukto_6.0-1_amd64.deb ;;
[Nn]*) echo "Thank you. Dukto Installation aborted." ;;
esac

#PIP
read -p "Do you want to install Python3 PIP? (Y/N): " yn
case $yn in
[Yy]*) sudo apt install python3-pip -y ;;
[Nn]*) echo "Thank you. Python3 PIP Installation aborted." ;;
esac

#NodeJS and NPM
read -p "Do you want to install NodeJs and NPM? (Y/N): " yn
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
read -p "Do you want to install Postman? (Y/N): " yn
case $yn in
[Yy]*) sudo snap install postman ;;
[Nn]*) echo "Thank you. Postman Installation aborted." ;;
esac

#ngrok
#write installation commands for ngrok

echo "Updating system and installing upgraded files ..."
sudo apt update -y && sudo apt upgrade -y &&
  echo "Installation Successful."
echo "Thank You for Using Shell Script."
