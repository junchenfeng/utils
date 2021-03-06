### VIM Basic
set -e

# install color scheme
mkdir -p ~/.vim/colors && cd ~/.vim/colors
wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400

# folding
mkdir -p ~/.vim/ftplugin
wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492


# intall packages with vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cd ~/git/utils
cp .vimrc ~/.vimrc

vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
./install.py
