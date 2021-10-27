function rgl
	rg --line-number --color=always $argv | less --tabs=4 -RFX
end
funcsave rgl

function rgal
	rg --hidden --no-ignore --line-number --color=always $argv | less --tabs=4 -RFX
end
funcsave rgal

function fdl
	fd --color=always $argv | less --tabs=4 -RFX
end
funcsave fdl

function fdal
	fd --hidden --no-ignore --color=always $argv | less --tabs=4 -RFX
end
funcsave fdal

function diff
	command diff --unified --color=always $argv | delta
end
funcsave diff

function grepl
	grep --color=always $argv | less --tabs=4 -RFX
end
funcsave grepl
