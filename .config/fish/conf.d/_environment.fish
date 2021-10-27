# set Neovim as the default editor
set --export EDITOR nvim
set --export VISUAL nvim

# set Oh My Neovim path and list of extensions to load
set --export OH_MY_NEOVIM $HOME/.oh-my-neovim
set --export OH_MY_NEOVIM_EXTENSIONS 'default code_style git gpg icons json mouse neomake search session spell true_color undo xml yaml'

# run `make` with as many jobs in parallel as there as processors
set --export MAKEFLAGS -j(nproc)

# make `fzf` search through hidden files as well
set --export FZF_DEFAULT_COMMAND 'fd -t f -t l 2> /dev/null'

# make `ripgrep` read its config file
set --export RIPGREP_CONFIG_PATH $HOME/.config/ripgreprc

## Linux-specific definitions

set fish_user_paths $HOME/.gem/ruby/2.7.0/bin $HOME/.node_modules_global/bin $HOME/.cargo/bin $HOME/go/bin $HOME/.local/bin
