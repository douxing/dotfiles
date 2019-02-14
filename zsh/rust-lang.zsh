if [ -d $HOME/.cargo/bin ]; then
    # @see https://lug.ustc.edu.cn/wiki/mirrors/help/rust-static
    export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
    export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup

    export PATH=$HOME/.cargo/bin:$PATH
fi
