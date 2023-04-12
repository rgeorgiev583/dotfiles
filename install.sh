#!/bin/bash

sudo ./install-packages.sh ./packages.lst
./install-dotfiles.sh <"${1:-macro-defs.lst}"
./install-fisher.fish
