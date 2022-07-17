sudo apt update -y
sudo apt install python3-pip python3-dev -y
sudo -H pip3 install --upgrade pip
sudo -H pip3 install virtualenv
mkdir -p ~/learning/my_jupyter_works
cd ~/learning/my_jupyter_works
virtualenv my_jupyter_works
source my_jupyter_works/bin/activate
pip install jupyter
echo "jupyter installed! run 'source my_jupyter_works/bin/activate && jupyter notebook' or 'jupyter'"
