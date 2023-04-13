#!/bin/bash

set -ex

source /etc/os-release

for distro in $ID $ID_LIKE; do
    case $distro in
    arch)
        break
        ;;

    debian)
        rustup default stable
        # `git-delta` is not in the official repos
        cargo install git-delta
        break
        ;;

    fedora)
        break
        ;;

    opensuse)
        rustup default stable
        # `difftastic` is not in the official repos
        cargo install difftastic
        break
        ;;
    esac
done
