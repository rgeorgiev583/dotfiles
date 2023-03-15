if not status --is-interactive
    exit
end

if set -q EDITOR
    abbr --add --global e $EDITOR
end

abbr --add --global df df -h
abbr --add --global less less --tabs=4 -RFX
abbr --add --global rga rg --hidden --no-ignore
abbr --add --global fda fd --hidden --no-ignore
abbr --add --global c code

# Linux-specific definitions

abbr --add --global free free -h
abbr --add --global sc systemctl
abbr --add --global jc journalctl
