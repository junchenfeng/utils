
# https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source
# Look out for with-python/python3-config-dir
set -e

sudo apt install libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev github


cd $HOME/git/
git clone git@github.com:vim/vim.git --depth 1
cd vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-largefile \
            --disable-netbeans \
            --enable-pythoninterp=yes \
            --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-fail-if-missing \
            --enable-cscope \
            --enable-gui=gtk2 \ 
            --prefix=/usr/local

make VIMRUNTIMEDIR=/usr/local/share/vim/vim80


