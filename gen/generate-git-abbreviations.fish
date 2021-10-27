#!/usr/bin/env fish

wget --output-document=- --quiet https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/plugins/git/git.plugin.zsh | grep '^alias' | sed -E 's/^alias (.+)=(.+)$/abbr -a \1 \2/' > git-abbreviations.fish
