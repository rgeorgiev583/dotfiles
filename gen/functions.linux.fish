function diff
	command diff -u $argv | diff-so-fancy | less --tabs=4 -RFX
end
funcsave diff

alias -s grep 'grep --color | less --tabs=4 -RFX'

alias -s makej 'make -j'(math (nproc) + 1)
alias -s cachemake "make CC='ccache gcc' CXX='ccache g++'"
alias -s cachemakej 'cachemake -j'(math (nproc) + 1)

alias -s free 'free -h'
alias -s sc 'systemctl'
