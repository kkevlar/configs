#!/usr/bin/env bash

# GUI applications

set -xe

sudo apt update
sudo apt upgrade
sudo apt install gnome-tweaks

# Cannot merge into single line
sudo snap install code --classic
sudo snap install chromium
