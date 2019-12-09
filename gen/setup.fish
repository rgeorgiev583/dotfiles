#!/usr/bin/env fish

mkdir -p $HOME/.config/fish/conf.d

./setup-environment.fish
./setup-functions.fish
./setup-abbreviations.fish
./setup-git.fish
./setup-fisher.fish
./setup-fzf.fish
