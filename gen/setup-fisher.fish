#!/usr/bin/env fish

if not functions -q fisher
	if grep -E '(ID|ID_LIKE)=arch' /etc/os-release > /dev/null
		pamac build fisher
	else 
		curl https://git.io/fisher --create-dirs -sLo $HOME/.config/fish/functions/fisher.fish
	end
end
