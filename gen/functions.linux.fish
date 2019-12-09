function diff
	command diff --unified --color=always $argv | diff-so-fancy | less --tabs=4 -RFX
end
funcsave diff

function grepl
	grep --color=always $argv | less --tabs=4 -RFX
end
funcsave grepl

alias --save free 'free -h'
