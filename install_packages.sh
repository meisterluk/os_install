#!/bin/sh

set -e

# required
sudo apt install zsh ack-grep wireshark gnupg2 keepassx btrfs-tools gparted \
    impressive arandr signal-desktop audacity vlc xournal pdftk qpdf \
    texlive-full pandoc pencil2d agave virtualbox jq automake git-all hexdump \
    meld geany vim clang gcc pypy ruby geogebra

# optional
sudo apt install network-manager-openconnect-gnome network-manager-pptp-gnome \
    network-manager-vpnc nmap fontforge scribus blender xia glade
