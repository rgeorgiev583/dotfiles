function rgl
	rg --line-number --color=always $argv | less --tabs=4 -RFX
end
funcsave rgl

function rga
	rg --hidden --no-ignore $argv
end
funcsave rga

function rgal
	rga --line-number --color=always $argv | less --tabs=4 -RFX
end
funcsave rgal

function fdl
	fd --color=always $argv | less --tabs=4 -RFX
end
funcsave fdl

function fda
	fd --hidden --no-ignore $argv
end
funcsave fda

function fdal
	fda --color=always $argv | less --tabs=4 -RFX
end

function nvim-session
	if test (count $argv) -eq 0
		set session $PWD
	else
		set session $argv[1]
	end
	#nvim -s (begin; echo :silent CloseSession; echo ":silent! OpenSession $session"; echo ":silent SaveSession $session"; end | psub) $argv[2..-1]
	#command nvim -s (begin; echo ":silent MakeSession $session"; echo ":silent OpenSession $session"; end | psub) $argv[2..-1]
	command nvim -s (begin; echo ":silent! OpenSession $session"; echo ":silent SaveSession $session"; end | psub) $argv[2..-1]
end
funcsave nvim-session

function diff
	command diff --unified --color=always $argv | delta
end
funcsave diff

function grepl
	grep --color=always $argv | less --tabs=4 -RFX
end
funcsave grepl
