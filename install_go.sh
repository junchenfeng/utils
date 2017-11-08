set -e
VERSION=1.9.2
OS=linux
ARCH=amd64

cd $HOME
curl -O  https://golangtc.com/static/go/$VERSION/go$VERSION.$OS-$ARCH.tar.gz
tar -C $HOME -xzf go$VERSION.$OS-$ARCH.tar.gz
mv go go$VERSION

mkdir go
cd go
mkdir src
mkdir bin
mkdir pkg

cd src
mkdir golang.org
cd golang.org
mkdir x
cd x 
git clone  git@github.com:golang/net.git --depth 1
git clone  git@github.com:golang/tools.git --depth 1
cd ../..

git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
