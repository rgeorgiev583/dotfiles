alias -s df 'df -h'

function rgl
	rg --line-number --color=always $argv | less --tabs=4 -RFX
end
funcsave rgl

function fdl
	fd --color=always $argv | less --tabs=4 -RFX
end
funcsave fdl
