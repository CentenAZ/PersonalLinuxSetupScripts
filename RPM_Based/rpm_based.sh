#!/bin/bash
###################################################
# RPM BASED DISTROS
###################################################


echo -e "\n\n"
# Update Software
echo -e "Updating All Software"
sudo dnf update -y
sudo yum update -y
echo -e "Installing Extra Packages for Enterprise Linux"
sudo dnf install epel-release -y

# Install Brave Browser
echo -e "Installing The Brave Browser"
sudo dnf install dnf-plugins-core -y
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser -y

# Install OpenSSH Host
echo -e "Installing OpenSSH Server"
sudo dnf install openssh-server -y

# Install VIM
echo -e "Installing VIM"
sudo dnf install vim -y

# OPTIONAL APPLICATIONS
echo -e "Installing Neofetch"
sudo dnf install neofetch -y
echo -e "Installing Make"
sudo dnf install make -y

echo -e "Installing Bashtop"
mkdir /tmp
cd /tmp
git clone https://github.com/aristocratos/bashtop.git
cd bashtop
sudo make install
