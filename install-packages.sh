#!/bin/bash

source /etc/os-release

for package_list_filename; do
    source $package_list_filename
done

function install_packages {
    case $1 in
    arch)
        pacman --sync --needed --noconfirm ${arch[@]}
        exit
        ;;
    debian)
        # `fisher` and `git-delta` are not in the official repos
        apt-get -y update && apt-get -y install ${debian[@]} &&
            ln -sf /usr/bin/batcat /usr/local/bin/bat &&
            ln -sf /usr/lib/cargo/bin/fd /usr/local/bin/fd &&
            ln -sf /usr/bin/vim.tiny /usr/local/bin/vim
        exit
    ;;
    fedora)
        # `fisher` is not in the official repos
        yum -y install ${fedora[@]}
        exit
        ;;
    suse)
        # `fisher` is not in the official repos
        zypper -n install ${suse[@]}
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
