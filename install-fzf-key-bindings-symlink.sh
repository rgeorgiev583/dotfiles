#!/bin/bash

set -e

source /etc/os-release

function install_symlink {
    case $1 in
    arch|debian|suse)
        ln -sf /usr/share/fish/vendor_functions.d/fzf_key_bindings.fish ~/.config/fish/functions/fzf_key_bindings.fish
        exit
        ;;
    fedora)
        ln -sf /usr/share/fzf/shell/key-bindings.fish ~/.config/fish/functions/fzf_key_bindings.fish
        exit
        ;;
    esac
}

install_symlink "$ID"

for distro in $ID_LIKE; do
    install_symlink "$distro"
done

echo 'error: OS not supported' >&2
exit 1
