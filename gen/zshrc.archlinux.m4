changequote(`[', `]')dnl
dnl
define(OSDEP_OMZ_PLUGINS,[zgen oh-my-zsh plugins/archlinux])dnl
define(OSDEP_ALIASES,[alias free='free -m'                                            # Show sizes in MB
alias diff='diff -u --color'
alias sc='systemctl'])dnl
define(OSDEP_FUNCTIONS,[
function diffless {
    diff -u --color=always "$@" | less -r
}

function grepless {
    grep --exclude-dir={.bzr,CVS,.git,.hg,.svn} --color=always "$@" | less -r
}])dnl
define(PRINT_GREETING_MESSAGE,[echo $USER@$HOST  $(uname -srm) $(lsb_release -rcs)])dnl
define(ZSH_PLUGIN_PATH,[/usr/share/zsh/plugins])dnl
