#!/usr/bin/env bash

# Additional apps

set -xe

sudo apt update

sudo apt install -y \
  build-essential \
  cmake \
  python-is-python3 \
  curl \
  git \
  htop

sudo adduser $USER dialout

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm lazygit lazygit.tar.gz


curl https://sh.rustup.rs -sSf | sh

