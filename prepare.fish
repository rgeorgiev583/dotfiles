#!/bin/fish

if egrep -q '(ID|ID_LIKE)=arch' /etc/os-release
	yay --sync --needed neovim fzf diff-so-fancy fd ripgrep
	yay --sync --needed --answerclean None --answerdiff None --answeredit None --answerupgrade None git-delta
else
	echo 'error: OS not supported' >&2
end

if not functions --query fisher
	if test -f /etc/os-release; and egrep '(ID|ID_LIKE)=arch' /etc/os-release > /dev/null
		yay --sync --needed --answerclean None --answerdiff None --answeredit None --answerupgrade None fisher
	else
		curl https://git.io/fisher --create-dirs --silent --location --output $HOME/.config/fish/functions/fisher.fish
	end
end
