# Defined in functions.linux.fish @ line 10
function diffless
	diff --color=always $argv | less -r
end
