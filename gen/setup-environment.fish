#!/usr/bin/env fish

cp environment.fish $HOME/.config/fish/conf.d/_environment.fish

switch (uname)
	case Linux
		cp environment.linux.fish $HOME/.config/fish/conf.d/_environment.linux.fish
	case Darwin
		cp environment.macos.fish $HOME/.config/fish/conf.d/_environment.macos.fish
	case 'MSYS*'
		cp environment.msys.fish $HOME/.config/fish/conf.d/_environment.msys.fish
	case '*'
		echo 'error: OS not supported' >&2
end
