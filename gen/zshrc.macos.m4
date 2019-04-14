changequote(`[', `]')dnl
dnl
define(OSDEP_ALIASES,[alias diff='gdiff -u --color'])dnl
define(OSDEP_FUNCTIONS,[
function diffless {
    gdiff -u --color=always "$@" | less -r
}

function grepless {
    ggrep --exclude-dir={.bzr,CVS,.git,.hg,.svn} --color=always "$@" | less -r
}])dnl
define(PRINT_GREETING_MESSAGE,[echo $USER@$HOST  $(uname -srm)])dnl
define(ZSH_PLUGIN_PATH,[/usr/local/share/zsh/plugins])dnl
