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
chdir "$HOME/to_be_installed"

# grml zsh config
wget -c -O .grml_zshrc https://git.grml.org/f/grml-etc-core/etc/zsh/zshrc
move .grml_zshrc "$HOME/.grml_zshrc"

# restic
RESTIC_URL=$(curl -s https://api.github.com/repos/restic/restic/releases | jq -r '.[0].assets | .[].browser_download_url' | grep -i 'linux_amd64')
wget -c -O restic.bz2 "$RESTIC_URL"
bzip2 -d restic
rm restic.bz2
move restic* "$HOME/bin/restic"
chmod a+x "$HOME/bin/restic"

# ripgrep
RIPGREP_URL=$(curl -s https://api.github.com/repos/BurntSushi/ripgrep/releases | jq -r '.[0].assets | .[].browser_download_url' | grep -i 'amd64.deb')
wget -c -O ripgrep.deb "$RIPGREP_URL"
sudo dpkg -i ripgrep.deb

# exa
wget -c -O exa.zip "https://github.com/ogham/exa/releases/download/v0.8.0/exa-linux-x86_64-0.8.0.zip"
unzip exa.zip -d exa
mv exa/exa* "$HOME/bin"
chmod a+x "$HOME/bin/exa"

# icdiff
pip install icdiff

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

# sublimetext [via https://www.sublimetext.com/docs/3/linux_repositories.html ]
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
#sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# golang
echo "please manually install golang from https://golang.org/dl/"

# lua
echo "please manually install lua from https://www.lua.org/versions.html"

cd "$old_pwd"
rm -rf "$HOME/to_be_installed"
