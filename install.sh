#!/bin/bash

sudo ./install-packages.sh ./packages.lst

if [[ $# -eq 0 ]]; then
    ./install-dotfiles.sh <./macro-defs.lst
else
    macro_defs_filename=$1
    ./install-dotfiles.sh <"$macro_defs_filename"
fi

./install-fisher.fish
