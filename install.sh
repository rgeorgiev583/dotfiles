#!/bin/bash

set -ex

sudo ./install-packages.sh
./install-cargo.sh
./install-dotfiles.sh <"${1:-macro-defs.lst}"
./install-fisher.fish
