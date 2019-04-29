fish setup-functions.fish
if test $argv[1] = alias
	fish setup-git-aliases.fish
else
	fish setup-git-abbreviations.fish
fi
fish setup-fisher.fish
