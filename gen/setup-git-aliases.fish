#!/usr/bin/fish

wget -O /tmp/git.plugin.zsh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/plugins/git/git.plugin.zsh
grep '^alias' /tmp/git.plugin.zsh | sed 's/^alias/alias -s/' > /tmp/git.plugin.fish

source /tmp/git.plugin.fish

rm /tmp/git.plugin.zsh /tmp/git.plugin.fish
