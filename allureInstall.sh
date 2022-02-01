curl -o allure-2.16.1.tgz -OLs https://repo.maven.apache.org/maven2/io/qameta/allure/allure-commandline/2.16.1/allure-commandline-2.16.1.tgz
sudo tar -zxvf allure-2.16.1.tgz -C /opt/
sudo ln -s /opt/allure-2.16.1/bin/allure /usr/bin/allure
sudo rm -rf *.tgz*
