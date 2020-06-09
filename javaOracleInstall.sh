#Download Oracle JDK 11
while true; do
  read -p "Do you want to download the oracle jdk-11.0.7_linux-x64_bin.tar.gz in your this folder? (Y/N): " yn
  case $yn in
  [Yy]*)
    wget --load-cookies /tmp/cookies.txt \
      "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1zXJqUd4E99WLuMVa5n8Gfo6B09fhWGV1' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1zXJqUd4E99WLuMVa5n8Gfo6B09fhWGV1" \
      -O jdk-11.0.7_linux-x64_bin.tar.gz && rm -rf /tmp/cookies.txt
    break
    ;;
  [Nn]*)
    echo "The oracle jdk-11.0.7_linux-x64_bin.tar.gz download canceled. Thank you."
    break
    ;;
  esac
done

#Oracle JDK
while true; do
  read -p "Do you want to install oracle jdk-11.0.7_linux-x64_bin.tar.gz? (Y/N): " yn
  case $yn in
  [Yy]*)
        sudo mkdir -p /var/cache/oracle-java11-installer-local/ &&
          sudo cp jdk-11.0.7_linux-x64_bin.tar.gz /var/cache/oracle-java11-installer-local/ &&
          sudo add-apt-repository ppa:linuxuprising/java &&
          sudo sudo apt install oracle-java11-set-default-local
    break
    ;;
  [Nn]*)
    echo "Please download the oracle jdk-11.0.7_linux-x64_bin.tar.gz and run the script again. Thank you."
    break
    ;;
  esac
done
