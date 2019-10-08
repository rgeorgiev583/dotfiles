alias -s df 'df -h'

function rgl
	rg -n --color=always $argv | less --tabs=4 -RFX
end
funcsave rgl
