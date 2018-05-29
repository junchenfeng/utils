# Add repos
epel-release for Rstudio
redhat-lsb for python3.6
centos-release-scl for devtoolset

        yum -y install epel-release
        yum -y install redhat-lsb
        yum -y install centos-release-scl
        yum -y update

# Prepare
Development Tools are used for python and Rstudio package installment

        yum -y install yum-utils
        yum groupinstall "Development Tools"

Devtoolset-6 required for Vim-python support

        yum install -y devtoolset-6
        source /opt/rh/devtoolset-6/enable
        echo 'source /opt/rh/devtoolset-6/enable' >> ~/.profile

# Pythons
## Python2
        yum -y install python-pip
        yum install python-devel
## Python3
        yum -y install rh-python36
        
Prepare for Vim install        

        source /opt/rh/rh-python36/enable
        echo 'source /opt/rh/rh-python36/enable' >> ~/.profile
## Change Pypi repo

Switch to tsinghua pypi for speed optimization

        mkdir ~/.pip
        nano ~/.pip/pip.conf

Type in:

		[global]
		index-url = https://pypi.tuna.tsinghua.edu.cn/simple

## pipenv for env management
        pip3.6 install pipenv 

# Golang
        yum install -y golang

# Vim
Install Vim8 

        cd $HOME
        git clone https://github.com/vim/vim.git
        cd vim
        ./configure --prefix=/usr --with-features=huge --enable-multibyte --enable-pythoninterp --enable-python3interp --enable-fail-if-missing
        make install

NOTE: to remove old stuff #rm -f src/auto/config.cache

NOTE: if cannot find python config, locate by

        python3.6-config --configdir
        
then add (for example) 

        --with-python3-config-dir=/opt/rh/rh-python36/root/usr/lib/python3.6/config-3.6m-x86_64-linux-gnu

Install Vim plugins

        git clone https://github.com/Valloric/YouCompleteMe $HOME/YouCompleteMe
        cd $HOME/YouCompleteMe
        git submodule update --init --recursive
        ./install.py --go-completer

# Database
        yum install mariadb-devel


# Rstudio
Install Rstudio Server
        yum update
        yum install R -y
        cd
        wget https://download2.rstudio.org/rstudio-server-rhel-1.1.447-x86_64.rpm
        yum install rstudio-server-rhel-1.1.447-x86_64.rpm

Start the service
        systemctl status rstudio-server.service
        systemctl enable rstudio-server.service
        #firewall-cmd --permanent --zone=public --add-port=8787/tcp
        #firewall-cmd --reload

Install Packages
        sudo -i R
        install.packages("dplyr")
