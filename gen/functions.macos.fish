function diff
	gdiff --unified --color=always $argv | delta
end
funcsave diff

alias --save grep ggrep

function grepl
	ggrep --color=always $argv | less --tabs=4 -RFX
end
funcsave grepl
