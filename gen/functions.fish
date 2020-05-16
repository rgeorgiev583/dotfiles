alias -s df 'df -h'

function rgl
	rg --line-number --color=always $argv | less --tabs=4 -RFX
end
funcsave rgl

function fdl
	fd --color=always $argv | less --tabs=4 -RFX
end
funcsave fdl

## Linux-specific definitions

function diff
	command diff --unified --color=always $argv | delta
end
funcsave diff

function grepl
	grep --color=always $argv | less --tabs=4 -RFX
end
funcsave grepl

alias --save free 'free --human'
