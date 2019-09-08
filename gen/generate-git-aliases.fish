#!/usr/bin/env fish

wget -O- -q https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/plugins/git/git.plugin.zsh | grep '^alias' | sed 's/^alias/alias -s/' > ../.config/fish/conf.d/git-aliases.fish
