#!/usr/bin/zsh
#
# bootstrap using zsh

PWDP=$(pwd -P)

link_file () {
    local src=$1 dst=$2

    ln -s "$src" "$dst"
}

# for file extension and base
# @see https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash
# @see https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html#Shell-Parameter-Expansion
symbolize_all () {
    for src in $(find -H "$PWDP" -maxdepth 2 -name '*.symlink')
    do
        dst="$HOME/.$(basename "${src%.*}")"
	link_file "$src" "$dst"
    done
}

symbolize_all
