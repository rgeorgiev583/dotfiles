# set Neovim as the default editor
set --universal --export EDITOR nvim
set --universal --export VISUAL nvim

# set default diff tool
set --universal --export DIFFPROG 'nvim -d'

# set Oh My Neovim path and list of extensions to load
set --universal --export OH_MY_NEOVIM $HOME/.oh-my-neovim
set --universal --export OH_MY_NEOVIM_EXTENSIONS 'default code_style git gpg icons json mouse search session spell true_color undo xml yaml'

# run `make` with as many jobs in parallel as there as processors
set --universal --export MAKEFLAGS -j(nproc)

# make `fzf` use fd(1)
set --universal --export FZF_DEFAULT_COMMAND 'fd -t f -t l 2> /dev/null'

# make `ripgrep` read its config file
set --universal --export RIPGREP_CONFIG_PATH $HOME/.config/ripgreprc

## Linux-specific definitions

fish_add_path $HOME/.gem/ruby/3.0.0/bin $HOME/.node_modules_global/bin $HOME/.cargo/bin $HOME/go/bin $HOME/.local/bin
