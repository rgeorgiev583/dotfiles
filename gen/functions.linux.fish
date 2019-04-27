alias -s grep 'grep --color'

function diff
	diff $argv | diff-so-fancy
end
funcsave diff

alias -s free 'free -h'
alias -s sc 'systemctl'

alias -s makej 'make -j'(math (nproc) + 1)
alias -s cachemake "make CC='ccache gcc' CXX='ccache g++'"
alias -s cachemakej 'cachemake -j'(math (nproc) + 1)

function diffless
    diff --color=always $argv | less -r
end
funcsave diffless

function grepless
    grep --color=always $argv | less -r
end
funcsave grepless
