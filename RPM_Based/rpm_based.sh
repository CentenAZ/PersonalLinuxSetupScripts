#!/bin/bash
###################################################
# RPM BASED DISTROS
###################################################


# Update Software
echo -e "\n\n**Updating All Software**"
sudo dnf update -y
sudo yum update -y
echo -e "\n**Installing Extra Packages for Enterprise Linux**"
sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y

# Install Brave Browser
echo -e "\n**Installing The Brave Browser**"
sudo dnf install dnf-plugins-core -y
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser -y

# Install OpenSSH Host
echo -e "\n**Installing OpenSSH Server**"
sudo dnf install openssh-server -y

# Install VIM
echo -e "\n**Installing VIM**"
sudo dnf install vim -y

# OPTIONAL APPLICATIONS
echo -e "\n**Installing Neofetch**"
sudo dnf install neofetch -y
echo -e "\n**Installing Make**"
sudo dnf install make -y

echo -e "\n**Installing Bashtop**"
cd /tmp
git clone https://github.com/aristocratos/bashtop.git
cd bashtop
sudo make install