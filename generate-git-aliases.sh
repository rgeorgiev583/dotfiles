#!/bin/bash

set -ex

wget --output-document=- --quiet https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/plugins/git/git.plugin.zsh | grep '^alias' >./homedir/.config/fish/conf.d/git-aliases.fish
