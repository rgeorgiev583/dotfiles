mkdir -p $HOME/.config/fish/conf.d
wget -O- -q https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/plugins/git/git.plugin.zsh | grep '^alias' | sed -E 's/^alias (.+)=(.+)$/abbr -a -g \1 \2/' > $HOME/.config/fish/conf.d/git-abbreviations.fish
