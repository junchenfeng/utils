# install brew and cask

# config iterm

    git clone https://github.com/powerline/fonts
    cd fonts
    ./install.sh

Open iTerm2 - Preferences - Profiles - Change Font - 12pt Meslo LG S DZ Regular for Powerline

# install python 

for more see https://jacobian.org/writing/python-environment-2018/

    brew install pyenv
    pip3 install pipenv

For now YouCompleteMe and Black appears to be incompatible with python3.7. Need to install python3.6
Use a local mirror to speed up in China

    export PYTHON_BUILD_MIRROR_URL="http://mirrors.sohu.com/python/3.6.4/"
    pyenv install -v 3.6.4

Alternatively
    
    wget http://mirrors.sohu.com/python/3.5.2/Python-3.5.2.tar.xz  -P ~/.pyenv/cache


# install vim

    brew install vim
    brew install wget
    brew install cmake


# install mysqlclient

latest mysql 8.X is incompatible with mysqlclient

    brew install mysql@5.7
    brew switch mysql@5.7 5.7.22
