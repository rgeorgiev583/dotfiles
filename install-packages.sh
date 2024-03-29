#!/bin/bash

set -ex

source /etc/os-release
source ./packages.lst

for distro in $ID $ID_LIKE; do
    case $distro in
    arch)
        # shellcheck disable=SC2068,SC2154
        pacman --sync --needed --noconfirm ${arch[@]}
        break
        ;;

    debian)
        # shellcheck disable=SC2068,SC2154
        apt-get -y update && apt-get -y install ${debian[@]} &&
            ln -sf /usr/bin/batcat /usr/local/bin/bat &&
            ln -sf /usr/lib/cargo/bin/fd /usr/local/bin/fd &&
            ln -sf /usr/bin/vim.tiny /usr/local/bin/vim
        break
        ;;

    fedora)
        # shellcheck disable=SC2068,SC2154
        yum -y install ${fedora[@]}
        break
        ;;

    opensuse)
        # shellcheck disable=SC2068,SC2154
        zypper -n install ${opensuse[@]}
        break
        ;;
    esac
done
