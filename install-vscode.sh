#!/bin/bash

set -ex

source /etc/os-release
source ./packages.lst

for distro in $ID $ID_LIKE; do
    case $distro in
    arch)
        yay --sync --needed --noconfirm visual-studio-code-bin
        break
        ;;

    debian)
        apt-get -y install wget gpg
        wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >/tmp/packages.microsoft.gpg
        install -D -o root -g root -m 644 /tmp/packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
        echo 'deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main' >/etc/apt/sources.list.d/vscode.list
        rm /tmp/packages.microsoft.gpg
        apt-get -y install apt-transport-https
        apt-get -y update
        apt-get -y install code
        break
        ;;

    fedora)
        rpm --import https://packages.microsoft.com/keys/microsoft.asc
        echo -e '[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc' >/etc/yum.repos.d/vscode.repo
        yum -y check-update
        yum -y install code
        break
        ;;

    opensuse)
        rpm --import https://packages.microsoft.com/keys/microsoft.asc
        echo -e '[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc' >/etc/zypp/repos.d/vscode.repo
        zypper -n refresh
        zypper -n install code
        break
        ;;
    esac
done
