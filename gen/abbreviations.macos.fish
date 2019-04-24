abbr -a -g diff gdiff -u --color
abbr -a -g grep ggrep --color

abbr -a -g makej make -j(math (sysctl -n hw.ncpu) + 1)
abbr -a -g cachemake make CC='ccache gcc' CXX='ccache g++'
abbr -a -g cachemakej cachemake -j(math (sysctl -n hw.ncpu) + 1)

function diffless
    diff --color=always $argv | less -r
end
funcsave diffless

function grepless
    grep --color=always $argv | less -r
end
funcsave grepless
