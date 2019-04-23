# Defined in functions.linux.fish @ line 15
function grepless
	grep --color=always $argv | less -r
end
