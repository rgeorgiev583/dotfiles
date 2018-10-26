export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
unset LESS

eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)
export PATH="$HOME/.cargo/bin:$HOME/go/bin:$PATH:$HOME/src/google/depot_tools"
