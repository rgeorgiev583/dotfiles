if set -q EDITOR
	abbr --add e $EDITOR
	abbr --add es $EDITOR-session
end

## Linux-specific definitions

abbr --add sc 'systemctl'
abbr --add jc 'journalctl'
