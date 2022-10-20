#!/bin/bash

if ! grep -Eq '(ID|ID_LIKE)=arch' /etc/os-release; then
	echo 'error: OS not supported' >&2
	exit 1
fi

yay --sync --needed neovim fzf git-delta fd ripgrep fisher nerd-fonts-hack
