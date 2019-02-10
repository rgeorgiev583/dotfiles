source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle z
antigen bundle archlinux

antigen theme robbyrussell

antigen apply

source ~/.zshrc.pre-oh-my-zsh

export OH_MY_NEOVIM=$HOME/.oh-my-neovim
export OH_MY_NEOVIM_EXTENSIONS="default clang code_style denite git go gpg icons json mouse neomake register search session smooth_scroll snippet spell test themes true_color undo vim xml yaml"

source $HOME/.oh-my-neovim/tools/functions.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh