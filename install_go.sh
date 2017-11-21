set -e
VERSION=1.9.2
OS=linux
ARCH=amd64

cd $HOME
curl -O  https://golangtc.com/static/go/$VERSION/go$VERSION.$OS-$ARCH.tar.gz
tar -C $HOME -xzf go$VERSION.$OS-$ARCH.tar.gz
mv go go$VERSION

export GOROOT=$HOME/go$VERSION
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/go

source ~/.bashrc

# 增加一些golang的包
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


go get -u github.com/golang/tools
go get -u github.com/golang/net


cd $GOPATH/src

mv github.com/golang/tools golang.org/x/tools
mv github.com/golang/net golang.org/x/net

