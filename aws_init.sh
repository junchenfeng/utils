# setup python

sudo apt-get install python-dev
sudo apt-get install python-pip
sudo pip install virtualenv


# setup vim
sudo apt-get install git
git clone https://github.com/junchenfeng/utils.git
cd utils
mv .vimrc ~/

chmod +x vim_install_ubuntu.sh
./vim_install_ubuntu.sh

# config the python environment
mkdir pydev
cd pydev
virtualenv venv
source venv/bin/activate
#sudo /bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=1024
#sudo /sbin/mkswap /var/swap.1
#sudo /sbin/swapon /var/swap.1

sudo pip install numpy
sudo pip install scipy
sudo pip install pyirt
sudo pip install luigi

#sudo swapoff /var/swap.1
#sudo rm /var/swap.1

deactivate
