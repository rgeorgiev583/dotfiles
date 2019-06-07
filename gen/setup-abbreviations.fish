mkdir -p ~/.config/fish/conf.d

if test -f abbreviations.fish
	cp abbreviations.fish ~/.config/fish/conf.d/
end

set os_name (uname)
if test $os_name = Linux; and test -f abbreviations.linux.fish
	cp abbreviations.linux.fish ~/.config/fish/conf.d/
else if test $os_name = Darwin; and test -f abbreviations.macos.fish
	cp abbreviations.macos.fish ~/.config/fish/conf.d/
end
