#!/usr/bin/env fish

if not functions -q fisher
	if test -f /etc/os-release; and grep -E '(ID|ID_LIKE)=arch' /etc/os-release > /dev/null
		yay -S --needed --answerclean None --answerdiff None --answeredit None --answerupgrade None fisher
	else
		curl https://git.io/fisher --create-dirs -sLo $HOME/.config/fish/functions/fisher.fish
	end
end
