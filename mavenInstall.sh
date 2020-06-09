#Maven
while true; do
  read -p "Do you have JAVA installed in your system? (Y/N): " yn
  case $yn in
  [Yy]*)
    sudo apt install maven -y &&
      sudo touch mavenenv.sh &&
      sudo chmod 777 mavenenv.sh &&
      echo $JAVA_HOME && 
      sudo echo "export JAVA_HOME=${JAVA_HOME}" >mavenenv.sh &&
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

