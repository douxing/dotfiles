if [ -x `command -v go` ]; then
    export PATH=$PATH:/usr/local/go/bin

    if [ -z $GOPATH ]; then
	export GOPATH=$HOME/go
    fi

    mkdir -p $GOPATH/bin $GOPATH/src $GOPATH/lib
    export PATH=$PATH:$GOPATH/bin
fi
