#!/bin/bash

set -e

move() {
  if [ ! -e "$2" ]; then
    mv "$1" "$2";
  else
    echo "file $2 already exists";
    exit 1;
  fi
}

old_pwd="$PWD"
mkdir -p "$HOME/to_be_installed"
mkdir -p "$HOME/bin"
chdir "$old_pwd"

# grml zsh config
wget -c -O .grml_zshrc https://git.grml.org/f/grml-etc-core/etc/zsh/zshrc
move .grml_zshrc "$HOME/.grml_zshrc"

# restic
RESTIC_URL=$(curl -s https://api.github.com/repos/restic/restic/releases | grep browser_download_url | grep 'linux_amd64' | head -n 1 | cut -d '"' -f 4)
wget -c -O restic.bz2 "$RESTIC_URL"
bzip2 -d restic
rm restic.bz2
move restic* ~/bin/restic

# inkscapeslide
git clone --depth 1 "https://github.com/abourget/inkscapeslide.git"
sudo python inkscapeslide/inkscapeslide/setup.py install

# docker [via https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-using-the-repository ]
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce

# golang
echo "please manually install golang from https://golang.org/dl/"

# lua
echo "please manually install lua from https://www.lua.org/versions.html"

chdir "$old_pwd"
rm -rf "$HOME/to_be_installed"