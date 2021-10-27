if set -q EDITOR
	abbr --add e $EDITOR
end

abbr --add d docker
abbr --add dc docker-compose

## Linux-specific definitions

abbr --add sc 'systemctl'
abbr --add jc 'journalctl'
