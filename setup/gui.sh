#!/usr/bin/env bash

# GUI applications

set -xe

sudo apt update
sudo apt upgrade
sudo apt install gnome-tweaks

gsettings set org.gnome.desktop.input-sources xkb-options \[\'caps:ctrl_modifier\'\] 
gsettings set org.gnome.desktop.interface enable-animations true

# Cannot merge into single line
sudo snap install code --classic
sudo snap install chromium
