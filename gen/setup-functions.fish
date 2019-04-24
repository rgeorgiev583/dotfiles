if test -f functions.fish
	source functions.fish
end

set os_name (uname)
if test $os_name = Linux; and test -f functions.linux.fish
	source functions.linux.fish
else if test $os_name = Darwin; and test -f functions.macos.fish
	source functions.macos.fish
end
