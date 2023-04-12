#!/bin/bash

wget --output-document=- --quiet https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/plugins/git/git.plugin.zsh | grep '^alias' | sed -E 's/^alias (.+)=(.+)$/abbr --add --global \1 \2/' >./homedir/.config/fish/conf.d/git-abbreviations.fish
