export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
unset LESS

export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)
export PATH="$HOME/.cargo/bin:$HOME/go/bin:$HOME/.local/bin:$PATH:$HOME/src/google/depot_tools"
