# (1) notepadqq
install from Ubuntu Software

# (2) pinyin
https://blog.csdn.net/rznice/article/details/79841790

# (3) chrome
src: https://www.linuxbabe.com/ubuntu/install-google-chrome-ubuntu-18-04-lts

sudo nano /etc/apt/sources.list.d/google-chrome.list
(TYPE)deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main
Ctrl+O -> Enter -> Ctrl+X
        wget https://dl.google.com/linux/linux_signing_key.pub
        sudo apt-key add linux_signing_key.pub
        sudo apt update
        sudo apt install google-chrome-stable

switchyOmega+gfwlist

# (4) git
sudo apt-get install git
NOTE: do ssh-keygen and add it to the github.com settings
        git config --global user.name "Junchen Feng"
        git config --global user.email frankfeng.pku@gmail.com

# (5) python
## install python2
NOTE: crossover dependency requirement
sudo apt install python-minimal
## install python3 
sudo apt install python3-pip
pip3 install pipenv
NOTE: open ~/.bashrc
alias python=python3
alias pip=pip3

NOTE: switch to tsinghua pypi
mkdir ~/.pip
nano ~/.pip/pip.conf
type in:
		[global]
		index-url = https://pypi.tuna.tsinghua.edu.cn/simple

# (6) vim
sudo apt-get install vim
NOTE: now reinstall vim with dev support
cd ~
mkdir git
cd git
git clone git@github.com:junchenfeng/utils.git
cd utils

        sudo sh install_vim8.sh
        sudo sh config_vimrc.sh

NOTE: add "export VIMRUNTIME='/usr/share/vim/vim81/'" to ~/.bashrc 


# (7) guake

# (i) one-password
onepassword-X, chrome app

# (ii) tim
NOTE: first install crossover
sudo dpkg --add-architecture i386 ; sudo apt-get update
sudo apt-get install gdebi
wget http://crossover.codeweavers.com/redirect/crossover.deb
sudo gdebi crossover.deb

NOTE: DOWNLOAD tim from tecent.com



