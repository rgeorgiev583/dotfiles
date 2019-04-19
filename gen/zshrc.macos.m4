changequote(`<{[(', `)]}>')dnl
dnl
define(OSDEP_OMZ_PLUGINS,<{[()]}>)dnl
define(OSDEP_ALIASES,<{[(alias diff='gdiff -u --color'
alias makej="make -j$(($(sysctl -n hw.ncpu) + 1))"
alias cachemake="make CC='ccache gcc' CXX='ccache g++'"
alias cachemakej="cachemake -j$(($(sysctl -n hw.ncpu) + 1))"
)]}>)dnl
define(OSDEP_FUNCTIONS,<{[(
function diffless {
    gdiff -u --color=always "$@" | less -r
}

function grepless {
    ggrep --exclude-dir={.bzr,CVS,.git,.hg,.svn} --color=always "$@" | less -r
})]}>)dnl
define(PRINT_GREETING_MESSAGE,<{[(echo $USER@$HOST  $(uname -srm))]}>)dnl
define(ZSH_PLUGIN_PATH,<{[(/usr/local/share/zsh/plugins)]}>)dnl
