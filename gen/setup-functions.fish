#!/usr/bin/env fish

source functions.fish

switch (uname)
	case Linux
		source functions.linux.fish
	case Darwin
		source functions.macos.fish
	case '*'
		echo 'error: OS not supported' >&2
end
