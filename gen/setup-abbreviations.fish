#!/usr/bin/env fish

mkdir -p $HOME/.config/fish/conf.d

cp abbreviations.fish $HOME/.config/fish/conf.d/

switch (uname)
	case Linux
		cp abbreviations.linux.fish $HOME/.config/fish/conf.d/
	case Darwin
		cp abbreviations.macos.fish $HOME/.config/fish/conf.d/
	case '*'
		echo 'error: OS not supported' >&2
end
