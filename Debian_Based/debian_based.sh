#!/bin/bash
###################################################
# DEBIAN BASED DISTROS
###################################################


# Update Software
sudo apt update && upgrade -y

# Install Brave Browser
sudo apt install apt-transport-https curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y
sudo apt install brave-browser -y

# Install OpenSSH Host
sudo apt install openssh-server -y

# Install VIM
sudo apt install vim -y

# OPTIONAL APPLICATIONS
sudo apt install neofetch -y

sudo apt update -y
sudo apt install git -y
sudo git clone https://github.com/aristocratos/bashtop.git
cd bashtop/
cd DEB
sudo ./build
