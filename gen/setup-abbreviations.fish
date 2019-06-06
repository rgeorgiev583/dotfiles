if test -f abbreviations.fish
	source abbreviations.fish
end

set os_name (uname)
if test $os_name = Linux; and test -f abbreviations.linux.fish
	source abbreviations.linux.fish
else if test $os_name = Darwin; and test -f abbreviations.macos.fish
	source abbreviations.macos.fish
end
