#! /bin/sh

# Clone dotfiles
PWD=$(pwd)
GIT_URL="https://github.com/gabrielscaranello/dotfiles.git"
SRC_DIR="/tmp/dotfiles"

[[ -d "$SRC_DIR" ]] || git clone $GIT_URL $SRC_DIR

cd $SRC_DIR && ./setup/zsh.sh cd $PWD

