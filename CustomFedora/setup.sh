#!/bin/bash


# Checking for updates
sudo dnf update -y

# Installing GNOME and support for GNOME extensions
echo "INSTALLING GNOME"
sudo dnf install @base-x gnome-shell gnome-terminal nautilus firefox gnome-browser-connector gnome-tweaks @development-tools -y
sudo systemctl set-default graphical.target
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"

# Installing extra packages/dependencies
echo "INSTALLING EXTRA DEPENDENCIES"
sudo dnf group install "Hardware Support" -y

# Reboot
reboot