#!/usr/bin/env fish

mkdir -p $HOME/.config/fish/conf.d

if test -f abbreviations.fish
	cp abbreviations.fish $HOME/.config/fish/conf.d/
end

set os_name (uname)
if test $os_name = Linux; and test -f abbreviations.linux.fish
	cp abbreviations.linux.fish $HOME/.config/fish/conf.d/
else if test $os_name = Darwin; and test -f abbreviations.macos.fish
	cp abbreviations.macos.fish $HOME/.config/fish/conf.d/
end
