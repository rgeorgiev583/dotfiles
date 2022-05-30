#!/bin/fish

if not egrep -q '(ID|ID_LIKE)=arch' /etc/os-release
	echo 'error: OS not supported' >&2
	exit 1
end

yay --sync --needed neovim fzf git-delta fd ripgrep fisher nerd-fonts-hack
