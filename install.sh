#!/bin/bash

./install-packages.sh
./install-nerd-font-hack.sh
./install-lvim.sh
./install-fisher.fish
./install-fzf-key-bindings-symlink.sh

if [[ $# -eq 0 ]]; then
    ./install-dotfiles.sh < ./macro-defs.lst
else
    macro_defs_filename=$1
    ./install-dotfiles.sh < "$macro_defs_filename"
fi
