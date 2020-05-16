#!/usr/bin/env fish

if type fzf > /dev/null 2> /dev/null
	cp fish_user_key_bindings.fish $HOME/.config/fish/functions/fish_user_key_bindings.fish
end
