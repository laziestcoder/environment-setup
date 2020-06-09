#Download Oracle JDK 11
while true; do
  read -p "Do you want to download the oracle jdk.11.*.tar.gz in your this folder? (Y/N): " yn
  case $yn in
  [Yy]*)
    wget --load-cookies /tmp/cookies.txt \
      "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1DKQFlXWmcbMeP9w-UcGyUVSPbXgUFDg3' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1DKQFlXWmcbMeP9w-UcGyUVSPbXgUFDg3" \
      -O jdk-11.0.6_linux-x64_bin.tar.gz && rm -rf /tmp/cookies.txt
    break
    ;;
  [Nn]*)
    echo "The oracle jdk.11.0.6.tar.gz download canceled. Thank you."
    break
    ;;
  esac
done

#Oracle JDK
while true; do
  read -p "Do you want to install oracle jdk.11.*.tar.gz? (Y/N): " yn
  case $yn in
  [Yy]*)
        sudo mkdir -p /var/cache/oracle-jdk11-installer-local/ &&
#          sudo cp jdk-11.*.tar.gz /var/cache/oracle-jdk11-installer-local/ &&
          sudo add-apt-repository ppa:linuxuprising/java &&
          sudo apt install oracle-java11-set-default-local
    break
    ;;
  [Nn]*)
    echo "Please download the oracle jdk.11.*.tar.gz and run the script again. Thank you."
    break
    ;;
  esac
done
