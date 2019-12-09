#!/bin/sh

if grep -E '(ID|ID_LIKE)=arch' /etc/os-release > /dev/null; then
	sudo pacman -S --needed neovim diff-so-fancy
else
	echo 'error: OS not supported' >&2
fi
