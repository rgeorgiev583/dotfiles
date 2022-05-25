# set LunarVim as the default editor
set --global --export EDITOR lvim
set --global --export VISUAL lvim

# set LunarVim as the default diff tool
set --global --export DIFFPROG 'lvim -d'

# run `make` with as many jobs in parallel as there as processors
set --global --export MAKEFLAGS -j(nproc)

# make `fzf` use fd(1)
set --global --export FZF_DEFAULT_COMMAND 'fd --type file --type symlink --hidden 2> /dev/null'

# make `ripgrep` read its config file
set --global --export RIPGREP_CONFIG_PATH $HOME/.config/ripgreprc

fish_add_path ~/.local/bin
