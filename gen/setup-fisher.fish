#!/usr/bin/env fish

if not functions --query fisher
	if test -f /etc/os-release; and egrep '(ID|ID_LIKE)=arch' /etc/os-release > /dev/null
		yay --sync --needed --answerclean None --answerdiff None --answeredit None --answerupgrade None fisher
	else
		curl https://git.io/fisher --create-dirs --silent --location --output $HOME/.config/fish/functions/fisher.fish
	end
end
