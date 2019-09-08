function diff
	command diff -u --color=always $argv | diff-so-fancy | less --tabs=4 -RFX
end
funcsave diff

function grep
	command grep --color=always $argv | less --tabs=4 -RFX
end
funcsave grep

alias -s free 'free -h'
