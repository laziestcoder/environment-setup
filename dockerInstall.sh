#Docker
read -p "Do you want to install Docker? (Y/N): " yn
case $yn in
[Yy]*) sudo apt-get install docker-ce -y && apt-cache madison docker-ce &&
	sudo usermod -aG docker ${USER} ;;
[Nn]*) echo "Thank you. Docker Installation aborted." ;;
esac

#Docker-Compose
read -p "Do you want to install Docker-Compose? (Y/N): " yn
case $yn in
[Yy]*) sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
  sudo chmod +x /usr/local/bin/docker-compose &&
  sudo ln -fs /usr/local/bin/docker-compose /usr/bin/docker-compose ;;
[Nn]*) echo "Thank you. Docker-Compose Installation aborted." ;;
esac
