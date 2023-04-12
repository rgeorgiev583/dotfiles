#!/bin/bash

sudo ./install-packages.sh
./install-dotfiles.sh <"${1:-macro-defs.lst}"
./install-fisher.fish
