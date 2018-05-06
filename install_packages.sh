#!/bin/sh

set -e

# required
sudo apt install zsh ack-grep wireshark gnupg2 keepassx btrfs-tools gparted \
    impressive arandr audacity vlc xournal qpdf texlive-full pandoc pencil2d \
    virtualbox jq automake git-all meld geany vim clang gcc pypy ruby geogebra \
    curl htop

# optional
sudo apt install network-manager-openconnect-gnome network-manager-pptp-gnome \
    network-manager-vpnc nmap fontforge scribus blender xia glade
