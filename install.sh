#!/bin/bash

function overwrite_with_symlink_in_homedir {
    local entry=$1
    rm -rf -- "$HOME/${entry:?}"
    ln -sf "$(realpath "$entry")" "$HOME/$entry"
}

mkdir -p "$HOME/.config"
for entry in .*; do
    case $entry in
    . | .. | .git | .gitignore)
        continue
        ;;
    .config)
        for config_entry in .config/*; do
            overwrite_with_symlink_in_homedir "$config_entry"
        done
        ;;
    *)
        overwrite_with_symlink_in_homedir "$entry"
        ;;
    esac
done
