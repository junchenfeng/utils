set -e


# SET environment variablb
#export GOPATH=$HOME/go
#export GOROOT="$(brew --prefix golang)/libexec"
#export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
#source ~/.zshrc

brew install go

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

