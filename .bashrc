## Modified commands ## {{{
alias diff='colordiff'              # requires colordiff package
alias grep='grep --color=auto'
#alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias nano='nano -w'
alias ping='ping -c 5'
#alias dmesg='dmesg -HL'
alias gitc='git ci'
alias xclip='xclip -selection c'
alias питоня='python3'
# }}}

## New commands ## {{{
alias da='date "+%A, %B %d, %Y [%T]"'
alias du1='du --max-depth=1'
alias hist='history | grep'         # requires an argument
alias openports='ss --all --numeric --processes --ipv4 --ipv6'
alias pgg='ps -Af | grep'           # requires an argument
alias ..='cd ..'
# }}}

# Privileged access
if [ $UID -ne 0 ]; then
    alias sudo='sudo '
    alias scat='sudo cat'
    alias svim='sudoedit'
    alias root='sudo -i'

    # The following works only for systemd-based distros (e.g. Arch)
    #alias reboot='sudo systemctl reboot'
    #alias poweroff='sudo systemctl poweroff'
    # The following works only for Pacman-based distros (e.g. Arch)
    #alias update='sudo pacman -Su'
    #alias netctl='sudo netctl'
fi

## ls ## {{{
alias ls='ls -hF --color=auto'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ls -A'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | more'
# }}}

## Safety features ## {{{
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'                    # 'rm -i' prompts for every file
# safer alternative w/ timeout, not stored in history
alias rm=' timeout 3 rm -Iv --one-file-system'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias cls=' echo -ne "\033c"'       # clear screen for real (it does not work in Terminology)
# }}}

## Make Bash error tolerant ## {{{
alias :q=' exit'
alias :Q=' exit'
alias :x=' exit'
alias cd..='cd ..'
# }}}

# Generate random fixed-length (32-character) string (password-like) using /dev/urandom
mkrandfstr() {
    < /dev/urandom tr -dc _A-Za-z0-9 | head -c${1:-32}; echo;
}

# Compile and execute a C source on the fly
csource() {
    local output_path="$(mktemp)"

    if [ -f "$1" -a -r "$1" ]; then
        gcc "$1" -o "$output_path"        && "$output_path"
    else
        gcc -xc  -o "$output_path" - <& 0 && "$output_path"
    fi

    return 0
}

# Extract a wide range of compressed file types
# Syntax: extract <file1> <file2> ...
extract() {
    local c e i

    (($#)) || return

    for i; do
        c=''
        e=1

        if [[ ! -r $i ]]; then
            echo "$0: file is unreadable: \`$i'" >&2
            continue
        fi

        case $i in
            *.t@(gz|lz|xz|b@(2|z?(2))|a@(z|r?(.@(Z|bz?(2)|gz|lzma|xz)))))
                   c=(bsdtar xvf);;
            *.7z)  c=(7z x);;
            *.Z)   c=(uncompress);;
            *.bz2) c=(bunzip2);;
            *.exe) c=(cabextract);;
            *.gz)  c=(gunzip);;
            *.rar) c=(unrar x);;
            *.xz)  c=(unxz);;
            *.zip) c=(unzip);;
            *)     echo "$0: unrecognized file extension: \`$i'" >&2
                   continue;;
        esac

        command "${c[@]}" "$i"
        ((e = e || $?))
    done
    return "$e"
}

# cd and ls in one
cl() {
    dir=$1
    if [[ -z "$dir" ]]; then
        dir=$HOME
    fi
    if [[ -d "$dir" ]]; then
        cd "$dir"
        ls
    else
        echo "bash: cl: '$dir': Directory not found"
    fi
}

# Simple note taker
note () {
    # if file doesn't exist, create it
    if [[ ! -f $HOME/.notes ]]; then
        touch "$HOME/.notes"
    fi

    if ! (($#)); then
        # no arguments, print file
        cat "$HOME/.notes"
    elif [[ "$1" == "-c" ]]; then
        # clear file
        > "$HOME/.notes"
    else
        # add all arguments to file
        printf "%s\n" "$*" >> "$HOME/.notes"
    fi
}

# Simple task utility
todo() {
    if [[ ! -f $HOME/.todo ]]; then
        touch "$HOME/.todo"
    fi

    if ! (($#)); then
        cat "$HOME/.todo"
    elif [[ "$1" == "-l" ]]; then
        nl -b a "$HOME/.todo"
    elif [[ "$1" == "-c" ]]; then
        > $HOME/.todo
    elif [[ "$1" == "-r" ]]; then
        nl -b a "$HOME/.todo"
        printf "----------------------------\n"
        read -p "Type a number to remove: " number
        ex -sc "${number}d" "$HOME/.todo"
    else
        printf "%s\n" "$*" >> "$HOME/.todo"
    fi
}

# View a wide range of document types
docview () {
    if [[ -f $1 ]] ; then
        case $1 in
            *.pdf)       xpdf     "$1" ;;
            *.ps)        oowriter "$1" ;;
            *.odt)       oowriter "$1" ;;
            *.txt)       leafpad  "$1" ;;
            *.doc)       oowriter "$1" ;;
            *)           printf "don't know how to extract '%s'..." "$1" >&2; return 1 ;;
        esac
    else
        printf "'%s' is not a valid file!\n" "$1" >&2
        return 1;
    fi
}

# Calculator
calc() {
    echo "scale=3;$@" | bc -l
}

#
# --- Customizations by radoslav ---
#

PATH=$PATH:$HOME/.opam/system/bin
PATH=$HOME/papps/android-sdk/platform-tools:$PATH
export PATH="$HOME/papps/genymotion:$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"

PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\e[0;36m\]:\[\033[01;34m\]\w\[\e[0;33m\]\$(__git_ps1)\[\e[0;36m\]\$ \[\033[00m\]"
