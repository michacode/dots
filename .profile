# Nodejs
VERSION=v14.15.1
DISTRO=linux-x64
export PATH=/usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin:$PATH

# Go
GOPATH=/usr/local/go

# Wails and Go
export PATH="$PATH:$HOME/BUIDL/go/bin"
export PATH=$PATH:/usr/local/go/bin
export GO111MODULE=on

# Python virtualenv
#export WORKON_HOME=$PATH:~/venv
#export PROJECT_NAME=$PATH:~/BUIDL/pyenv
#source ~/.local/bin/virtualenvwrapper.sh

# Ledger BOLOS
export BOLOS_SDK=$PATH:/home/micha/BUIDL/nanox-secure-sdk

# Jre
#export PATH=$PATH:/usr/java/jre1.8.0_271

# Python Virtual Environment-20.4.2
export PATH=$PATH:/home/micha/.local/bin 
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2.7
