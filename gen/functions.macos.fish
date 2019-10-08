function diff
	gdiff -u --color=always $argv | diff-so-fancy | less --tabs=4 -RFX
end
funcsave diff

alias -s grep ggrep

function grepl
	ggrep --color=always $argv | less --tabs=4 -RFX
end
funcsave grepl
