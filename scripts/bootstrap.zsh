#!/usr/bin/zsh
#
# bootstrap using zsh

PWDP=$(pwd -P)

link_file () {
    local src=$1dst=$2

    ln -s "$1" "$2"
}

symbolize_all () {
    for src in $(find -H "$PWDP" -maxdepth 2 -name '*.symlink')
    do
        dst="$HOME/.$(basename "${src%.*}")"
	link_file "$src" "$dst"
    done
}

symbolize_all
