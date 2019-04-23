abbr -a -g diff diff -u --color
abbr -a -g grep grep --color
abbr -a -g free free -h
abbr -a -g sc systemctl

abbr -a -g makej make -j(math (nproc) + 1)
abbr -a -g cachemake make CC='ccache gcc' CXX='ccache g++'
abbr -a -g cachemakej cachemake -j(math (nproc) + 1)

function diffless
    diff --color=always $argv | less -r
end
funcsave diffless

function grepless
    grep --color=always $argv | less -r
end
funcsave grepless
