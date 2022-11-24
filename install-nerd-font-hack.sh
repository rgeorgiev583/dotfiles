#!/bin/bash

shopt -s extglob

set -e

function cleanup
{
    rm -rf /tmp/Hack.zip
    pushd ~/.local/share/fonts >/dev/null
    rm !(*.ttf)
    popd >/dev/null
}
trap cleanup EXIT

curl -fLo /tmp/Hack.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/Hack.zip
mkdir -p ~/.local/share/fonts
unzip -od ~/.local/share/fonts /tmp/Hack.zip
