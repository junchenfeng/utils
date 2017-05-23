### VIM Basic

# install color scheme
mkdir -p ~/.vim/colors && cd ~/.vim/colors
wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400


# install pathegon
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
#Now you can install any plugin into a .vim/bundle/plugin-name/ folder


### Python IDE

cd ~/.vim/bundle

# nerdtree
git clone git://github.com/scrooloose/nerdtree.git --depth 1

# power line
git clone git://github.com/Lokaltog/powerline.git --depth 1

# ale, a replacement for syntastic in Vim 8. Avoid stuck on error checking
git clone https://github.com/w0rp/ale.git --depth 1


# youCompleteMe: an fuzzy auto completion plugin
# install pre-requisite
apt-get install build-essential cmake
apt-get install python-dev python3-dev

# get the package
git clone --depth 1 git://github.com/Valloric/YouCompleteMe.git 
cd YouCompleteMe
git submodule update --init --recursive
# build
cd ~/.vim/bundle/YouCompleteMe
./install.py



# folding
mkdir -p ~/.vim/ftplugin
wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492




