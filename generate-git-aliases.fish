#!/usr/bin/env fish

wget --output-document=- --quiet https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/plugins/git/git.plugin.zsh | grep '^alias' > ../.config/fish/conf.d/git-aliases.fish
