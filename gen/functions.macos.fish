alias -s diff 'gdiff -u --color'
alias -s grep 'ggrep --color'

alias -s makej 'make -j'(math (sysctl -n hw.ncpu) + 1)
alias -s cachemake "make CC='ccache gcc' CXX='ccache g++'"
alias -s cachemakej 'cachemake -j'(math (sysctl -n hw.ncpu) + 1)

function diffless
    diff --color=always $argv | less -r
end
funcsave diffless

function grepless
    grep --color=always $argv | less -r
end
funcsave grepless
