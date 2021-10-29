function rgl
	rg --line-number --color=always $argv | less --tabs=4 -RFX
end

function rgal
	rg --hidden --no-ignore --line-number --color=always $argv | less --tabs=4 -RFX
end

function fdl
	fd --color=always $argv | less --tabs=4 -RFX
end

function fdal
	fd --hidden --no-ignore --color=always $argv | less --tabs=4 -RFX
end

function diff
	command diff --unified $argv | delta
end

function grepl
	grep --color=always $argv | less --tabs=4 -RFX
end
