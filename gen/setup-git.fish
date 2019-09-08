if test (count $argv) -ge 1
	if test $argv[1] = generate
		if test (count $argv) -ge 2; and test $argv[2] = git-aliases
			fish generate-git-aliases.fish
		else
			fish generate-git-abbreviations.fish
		end
	else if test $argv[1] = copy
		if test (count $argv) -ge 2; and test $argv[2] = git-aliases; and test -f ../.config/fish/conf.d/git-aliases.fish
			cp ../.config/fish/conf.d/git-aliases.fish $HOME/.config/fish/conf.d/
		else if test -f ../.config/fish/conf.d/git-abbreviations.fish
			cp ../.config/fish/conf.d/git-abbreviations.fish $HOME/.config/fish/conf.d/
		end
	end
end
