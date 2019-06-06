fish setup-functions.fish
fish setup-abbreviations.fish
if test $argv[1] = generate-git
	if test $argv[2] = alias
		fish setup-git-aliases.fish
	else
		fish setup-git-abbreviations.fish
	end
end
fish setup-fisher.fish
