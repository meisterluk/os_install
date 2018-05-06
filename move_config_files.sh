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

move "files/zshrc" "$HOME/.zshrc"
