function diff
	gdiff -u --color $argv | diff-so-fancy | less --tabs=4 -RFX
end
funcsave diff

alias -s grep 'ggrep --color | less --tabs=4 -RFX'

alias -s makej 'make -j'(math (sysctl -n hw.ncpu) + 1)
alias -s cachemake "make CC='ccache gcc' CXX='ccache g++'"
alias -s cachemakej 'cachemake -j'(math (sysctl -n hw.ncpu) + 1)
