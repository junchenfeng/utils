# (1) notepadqq
install from Ubuntu Software

# (2) pinyin
https://blog.csdn.net/rznice/article/details/79841790

sogou pinyin [ref](https://my.oschina.net/inuxor/blog/1791548)


# (3) chrome
src: https://www.linuxbabe.com/ubuntu/install-google-chrome-ubuntu-18-04-lts

Add google-chrome to apt

        sudo nano /etc/apt/sources.list.d/google-chrome.list
        deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main

now install

        wget https://dl.google.com/linux/linux_signing_key.pub
        sudo apt-key add linux_signing_key.pub
        sudo apt update
        sudo apt install google-chrome-stable
		
		
# (4) git
NOTE: do ssh-keygen and add it to the github.com settings
        
        sudo apt-get install git
        
Then edit the global config

        git config --global user.name "Junchen Feng"
        git config --global user.email frankfeng.pku@gmail.com

# (5) python
## install python2
NOTE: crossover dependency requirement

        sudo apt install python-minimal
## install python3 
Must have 3.6 and above for black python pkg

        sudo apt install python3-pip
        pip3 install pipenv

Edit alias for short-cut

        sudo nano ~/.bashrc        

Type in 

        alias python=python3
        alias pip=pip3

NOTE: switch to tsinghua pypi

        mkdir ~/.pip
        nano ~/.pip/pip.conf

Type in:

		[global]
		index-url = https://pypi.tuna.tsinghua.edu.cn/simple

# (6) vim
On Binoic Beaver, Vim8 comes with pytho3.6 support

        sudo apt-get install vim

Now install vim-plugins with my own config

        mkdir $HOME/git
        cd $HOME/git
        git clone git@github.com:junchenfeng/utils.git
        cd utils
        sudo sh config_vimrc.sh

To make syntastic work, has to change the VIMRUNTIME

        sudo nano ~/.bashrc

Type in

        export VIMRUNTIME='/usr/share/vim/vim81/'




# (i) one-password
onepassword-X, chrome app

# (ii) TIM
First install crossover

        sudo dpkg --add-architecture i386 ; sudo apt-get update
        sudo apt-get install gdebi
        wget http://crossover.codeweavers.com/redirect/crossover.deb
        sudo gdebi crossover.deb

Install TIM with cross-over

**Installed but failed**


