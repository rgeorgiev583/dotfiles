if not status --is-interactive
    exit
end

abbr --add --global e $EDITOR

abbr --add --global df df -h
abbr --add --global rga rg --hidden --no-ignore
abbr --add --global fda fd --hidden --no-ignore
abbr --add --global c code
abbr --add --global v vim
abbr --add --global n nvim
abbr --add --global b bat

# Linux-specific definitions

abbr --add --global free free -h
abbr --add --global sc systemctl
abbr --add --global jc journalctl
