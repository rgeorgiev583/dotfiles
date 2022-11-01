#!/bin/bash

set -e

mkdir -p ~/.local/share/fonts
curl -fLo /tmp/Hack.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/Hack.zip
unzip -d ~/.local/share/fonts /tmp/Hack.zip
rm /tmp/Hack.zip
