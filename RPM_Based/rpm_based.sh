#!/bin/bash
###################################################
# RPM BASED DISTROS
###################################################


echo -e "\n\n"
# Update Software
echo -e "\nUpdating All Software"
sudo dnf update -y
sudo yum update -y
echo -e "\nInstalling Extra Packages for Enterprise Linux"
sudo dnf install epel-release -y

# Install Brave Browser
echo -e "\nInstalling The Brave Browser"
sudo dnf install dnf-plugins-core -y
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser -y

# Install OpenSSH Host
echo -e "\nInstalling OpenSSH Server/Host"
sudo dnf install openssh-server -y

# Install VIM
echo -e "\nInstalling VIM"
sudo dnf install vim -y

# OPTIONAL APPLICATIONS
echo -e "\nInstalling Neofetch"
sudo dnf install neofetch -y
echo -e "\nInstalling Make"
sudo dnf install make -y

echo -e "\nInstalling Bashtop"
mkdir /tmp
cd /tmp
git clone https://github.com/aristocratos/bashtop.git
cd bashtop
sudo make install
