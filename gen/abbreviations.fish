if set -q EDITOR
	abbr --add e $EDITOR
end

abbr --add df df -h
abbr --add free free -h
abbr --add rga rg --hidden --no-ignore
abbr --add fda fd --hidden --no-ignore
abbr --add d docker
abbr --add dc docker-compose

## Linux-specific definitions

abbr --add sc 'systemctl'
abbr --add jc 'journalctl'
