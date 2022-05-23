# set Neovim as the default editor
set --global --export EDITOR nvim
set --global --export VISUAL nvim

# set default diff tool
set --global --export DIFFPROG 'nvim -d'

# run `make` with as many jobs in parallel as there as processors
set --global --export MAKEFLAGS -j(nproc)

# make `fzf` use fd(1)
set --global --export FZF_DEFAULT_COMMAND 'fd --type file --type symlink --hidden --exclude .git 2> /dev/null'

# make `ripgrep` read its config file
set --global --export RIPGREP_CONFIG_PATH $HOME/.config/ripgreprc
