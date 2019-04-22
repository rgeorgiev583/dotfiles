#!/usr/bin/fish

if not functions -q fisher
    curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
end

fisher add jethrokuan/fzf
