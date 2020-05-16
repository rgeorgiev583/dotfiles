#!/usr/bin/env fish

cp abbreviations.fish $HOME/.config/fish/conf.d/

switch (uname)
	case Linux
		cp abbreviations.linux.fish $HOME/.config/fish/conf.d/
	case '*'
		echo 'error: OS not supported' >&2
end
