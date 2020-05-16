#!/usr/bin/env fish

cp environment.fish $HOME/.config/fish/conf.d/_environment.fish
source $HOME/.config/fish/conf.d/_environment.fish

switch (uname)
	case Linux
		cp environment.linux.fish $HOME/.config/fish/conf.d/_environment.linux.fish
		source $HOME/.config/fish/conf.d/_environment.linux.fish
	case '*'
		echo 'error: OS not supported' >&2
end
