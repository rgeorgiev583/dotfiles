fish setup-functions.fish
fish setup-abbreviations.fish
if test $argv[1] = generate-git
	if test $argv[2] = aliases
		fish setup-git-aliases.fish
	else
		fish setup-git-abbreviations.fish
	end
else if test $argv[1] = copy-git
	if test $argv[2] = aliases; and test -f ../.config/fish/conf.d/git-aliases.fish
		cp ../.config/fish/conf.d/git-aliases.fish ~/.config/fish/conf.d/
	else if test -f ../.config/fish/conf.d/git-abbreviations.fish
		cp ../.config/fish/conf.d/git-abbreviations.fish ~/.config/fish/conf.d/
	end
end
fish setup-fisher.fish
