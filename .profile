export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim

eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)

export PATH="$(yarn global bin):$HOME/.cargo/bin:$(go env GOPATH)/bin:$HOME/.local/bin:$PATH"
