#!/bin/sh

if grep -E '(ID|ID_LIKE)=arch' /etc/os-release > /dev/null; then
	sudo pacman -S neovim diff-so-fancy
else
	echo 'error: OS not supported' >&2
fi
