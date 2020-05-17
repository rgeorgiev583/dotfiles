# set Neovim as the default editor
set --export EDITOR nvim
set --export VISUAL nvim

# colorize man pages
set --export LESS_TERMCAP_mb \e\[01\;32m
set --export LESS_TERMCAP_md \e\[01\;32m
set --export LESS_TERMCAP_me \e\[0m
set --export LESS_TERMCAP_se \e\[0m
set --export LESS_TERMCAP_so \e\[01\;47\;34m
set --export LESS_TERMCAP_ue \e\[0m
set --export LESS_TERMCAP_us \e\[01\;36m

# set Oh My Neovim path and list of extensions to load
set --export OH_MY_NEOVIM $HOME/.oh-my-neovim
set --export OH_MY_NEOVIM_EXTENSIONS 'default clang code_style git go gpg icons json mouse neomake search session smooth_scroll snippet spell test themes true_color undo vim xml yaml'

# run `make` with as many jobs in parallel as there as processors
set --export MAKEFLAGS -j(nproc)

## Linux-specific definitions

set --universal PATH $HOME/.gem/ruby/2.7.0/bin $HOME/.gem/ruby/2.6.0/bin $HOME/.node_modules_global/bin $HOME/.cargo/bin $HOME/go/bin $HOME/.local/bin $PATH
