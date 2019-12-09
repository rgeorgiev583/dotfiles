function diff
	command diff --unified --color=always $argv | delta
end
funcsave diff

function grep
	command grep --color=always $argv | less --tabs=4 -RFX
end
funcsave grep
