function diff
	command diff -u --color $argv | diff-so-fancy | less --tabs=4 -RFX
end
funcsave diff

function grep
	command grep --color $argv | less --tabs=4 -RFX
end
funcsave grep

alias -s cachemake "make CC='ccache gcc' CXX='ccache g++'"

alias -s free 'free -h'
