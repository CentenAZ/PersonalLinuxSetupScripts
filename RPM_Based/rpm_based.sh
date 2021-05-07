#!/bin/bash
###################################################
# RPM BASED DISTROS
###################################################


# Update Software
sudo dnf update -y
sudo yum update -y
sudo dnf install epel-release -y

# Install Brave Browser
sudo dnf install dnf-plugins-core -y
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser -y

# Install OpenSSH Host
sudo dnf install openssh-server -y

# Install VIM
sudo dnf install vim -y

# OPTIONAL APPLICATIONS
sudo dnf install neofetch -y
sudo dnf install make -y

mkdir /tmp
cd /tmp
git clone https://github.com/aristocratos/bashtop.git
cd bashtop
sudo make install