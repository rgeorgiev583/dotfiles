#!/usr/bin/env fish

mkdir -p ../.config/fish/conf.d
wget -O- -q https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/plugins/git/git.plugin.zsh | grep '^alias' | sed -E 's/^alias (.+)=(.+)$/abbr -a \1 \2/' > ../.config/fish/conf.d/git-abbreviations.fish
