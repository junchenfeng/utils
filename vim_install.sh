### VIM Basic

# install color scheme
mkdir -p ~/.vim/colors && cd ~/.vim/colors
wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400


# install pathegon
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
#Now you can install any plugin into a .vim/bundle/plugin-name/ folder


### Python IDE




# jedi-vim
cd ~/.vim/bundle
git clone git://github.com/davidhalter/jedi-vim.git
cd ~/.vim/bundle/jedi-vim  
git submodule update --init


# nerdtree
cd ~/.vim/bundle
git clone git://github.com/scrooloose/nerdtree.git

# power line
cd ~/.vim/bundle
git clone git://github.com/Lokaltog/vim-powerline.git


# ctrlp
cd ~/.vim/bundle
git clone https://github.com/kien/ctrlp.vim.git



# folding
mkdir -p ~/.vim/ftplugin
wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492


# ipdb for debugging
sudo pip install ipdb

