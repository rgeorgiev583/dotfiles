alias -s grep 'ggrep --color'

function diff
	gdiff $argv | diff-so-fancy
end
funcsave diff

alias -s makej 'make -j'(math (sysctl -n hw.ncpu) + 1)
alias -s cachemake "make CC='ccache gcc' CXX='ccache g++'"
alias -s cachemakej 'cachemake -j'(math (sysctl -n hw.ncpu) + 1)

function diffless
    diff $argv | less --tabs=4 -RFX
end
funcsave diffless

function grepless
    grep $argv | less --tabs=4 -RFX
end
funcsave grepless
