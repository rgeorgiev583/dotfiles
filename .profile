# set Neovim as the default editor
export EDITOR=nvim
export VISUAL=nvim

# colorize man pages
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'

# run `make` with as many jobs in parallel as there as processors
export MAKEFLAGS="-j$(nproc)"

# set Oh My Neovim path and list of extensions to load
export OH_MY_NEOVIM=${HOME}/.oh-my-neovim
export OH_MY_NEOVIM_EXTENSIONS='default clang code_style git go gpg icons json mouse neomake search session smooth_scroll snippet spell test themes true_color undo vim xml yaml'
