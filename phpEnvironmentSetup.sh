sudo apt install -y composer
sudo apt install -y build-essential libprotobuf-dev libboost-dev openssl protobuf-compiler liblz4-tool zstd
sudo apt install -y php7.2-cli php7.2-dev php7.2-mysql php7.2-pdo php7.2-xml
sudo pecl install mysql_xdevapi
echo "extension=mysql_xdevapi.so" >> mysql_xdevapi.ini
sudo mv mysql_xdevapi.ini /etc/php/7.2/mods-available/
sudo chown root:root /etc/php/7.2/mods-available/mysql_xdevapi.ini
sudo phpenmod -v 7.2 -s ALL mysql_xdevapi
php -m |grep mysql
sudo apt-get install -y php-mbstring
