# Jc's Personal Toolbox


# init-$OS
install the env from scratch from cloud

# Install YCM
Check out the github documentation.

## centos6.8
For detailed walk through, [here in CHINESE](http://990487026.blog.51cto.com/10133282/1905427)
```
wget ftp://ftp.gnu.org/gnu/gcc/gcc-6.3.0/gcc-6.3.0.tar.bz2
tar xf gcc-6.3.0.tar.bz2
cd gcc-6.3.0
./contrib/download_prerequisites
echo $?
./configure --enable-checking=release --enable-languages=c,c++ --disable-multilib && make -j 4 
echo $?
sudo make install
```
# Install Vim 8.0
Look out for with-python/python3-config-dir

```
git clone git@github.com:vim/vim.git --depth 1
cd vim/src
./configure --with-features=huge \
            --enable-largefile \
            --disable-netbeans \
            --enable-pythoninterp \
            --with-python-config-dir=/data/workspace/junchen/virt_env/py27/lib/python2.7/config \
            --enable-python3interp=yes \
            --with-python3-config-dir=/data/workspace/junchen/virt_env/py36/lib/python3.5/config-3.5m/ \
            --enable-gui=auto \
            --enable-fail-if-missing \
            --enable-cscope \

make
sudo make install
```

# vim-install.sh
Lightweight install with Vundle. Plus python folding.

# .vimrc
## nerdtree
file system management

## vim-airline
Simple but useful status report

## ale
Async syntax check for Vim 8

## YouCompleteMe
Autocompletion is the mother or productivity gain

## vim-go
IDE for golang
