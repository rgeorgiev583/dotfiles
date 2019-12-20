# run `make` with as many jobs in parallel as there as processors
set --export MAKEFLAGS -j(nproc)

set --universal fish_user_paths $HOME/.gem/ruby/2.6.0/bin $HOME/.node_modules_global/bin $HOME/.cargo/bin $HOME/go/bin
