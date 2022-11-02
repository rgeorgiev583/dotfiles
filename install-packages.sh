#!/bin/bash

source /etc/os-release

function install_packages {
    case $1 in
    arch)
        pacman --sync --needed --noconfirm bat fd fish fisher fzf git-delta neovim psmisc python-pip ripgrep rsync sqlite tree
        exit
        ;;
    debian)
        # `fisher` and `git-delta` are not in the official repos
        apt-get -y update && apt-get -y install bat fd-find fish fzf neovim psmisc python3-pip ripgrep rsync sqlite3 tree &&
            ln -s /usr/bin/batcat /usr/local/bin/bat &&
            ln -s /usr/lib/cargo/bin/fd /usr/local/bin/fd &&
            ln -s /usr/bin/vim.tiny /usr/local/bin/vim
        exit
    ;;
    fedora)
        # `fisher` is not in the official repos
        yum -y install bat fd-find fish fzf git-delta neovim psmisc python-pip ripgrep rsync sqlite tree
        exit
        ;;
    esac
}

install_packages "$ID"

for distro in $ID_LIKE; do
    install_packages "$distro"
done

echo 'error: OS not supported' >&2
exit 1
