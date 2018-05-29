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



# Pythons
## Python2
        yum -y install python-pip
        yum install python-devel
## Python3

### RED HAT
Devtoolset-7 is required for python install support

        yum install -y devtoolset-7
        source /opt/rh/devtoolset-7/enable
        echo 'source /opt/rh/devtoolset-7/enable' >> ~/.profile		

Install python3

        yum -y install rh-python36-2.0-1.el7.x86_64
		yum -y install rh-python36-python-devel.x86_64
		yum -y install rh-python36-scldevel.x86_64
        source /opt/rh/rh-python36/enable
        echo 'source /opt/rh/rh-python36/enable' >> ~/.profile
		
### Compile from source
[ref](https://danieleriksson.net/2017/02/08/how-to-install-latest-python-on-centos/). The current setup use make install instead of make altinstall to force python3 binding so as to install vim.

		wget http://python.org/ftp/python/3.6.5/Python-3.6.5.tar.xz
		tar xf Python-3.6.5.tar.xz
		cd Python-3.6.5
		./configure --prefix=/usr/local --enable-shared LDFLAGS="-Wl,-rpath /usr/local/lib"
		make && make install
		
## Pip

		wget https://bootstrap.pypa.io/get-pip.py
		python3.6 get-pip.py	

Switch to tsinghua pypi for speed optimization

        mkdir ~/.pip
        nano ~/.pip/pip.conf

Type in:

		[global]
		index-url = https://pypi.tuna.tsinghua.edu.cn/simple
		
Add env management

        pip install pipenv 

# Golang
        yum install -y golang

# Vim
## Install Vim8 
if this is not the first installment, check. [ref](https://liyang85.github.io/compile-the-latest-vim-on-centos7.html)

		yum list installed | grep -i vim
		yum remove vim-enhanced vim-common vim-filesystem
Then compile vim from source	

        cd $HOME
        git clone https://github.com/vim/vim.git
        cd vim
        ./configure --prefix=/usr \
					--with-features=huge \
					--enable-multibyte \
					--enable-pythoninterp \
					--enable-python3interp \
					--with-python3-config-dir=/usr/local/lib/python3.6/config-3.6m-x86_64-linux-gnu \
					--enable-fail-if-missing
		make && make install

NOTE: to remove old stuff 

		rm -f src/auto/config.cache

NOTE: if cannot find python config, locate by

        python3.6-config --configdir
        

NOTE: If you are using redhat python. redhat's python3.6-config function may return wrong directory! [ref](https://bugzilla.redhat.com/show_bug.cgi?id=1438219)

If you still have troubles, see the config log for further debugging
		
		cat src/auto/config.log

**Neither redhat nor src tarball python3 built in vim**


## Install Vim plugins

		
Now install vim-plugins with my own config

        mkdir $HOME/git
        cd $HOME/git
        git clone git@github.com:junchenfeng/utils.git
        cd utils
        cp .vimrc ~/.vimrc
		
		vim +PluginInstall +qall
		
		cd ~/.vim/bundle/YouCompleteMe
		./install.py --go-completer

To make syntastic work, has to change the VIMRUNTIME

        sudo nano ~/.bashrc

Type in

        export VIMRUNTIME='/usr/share/vim/vim81/'
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
