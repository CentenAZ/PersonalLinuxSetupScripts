#!/bin/bash
###################################################
# Pop OS
###################################################


# Update Software
echo "\n\n**Updating All Software**"
sudo apt update && upgrade -y

# Install Brave Browser
echo "\n**Installing The Brave Browser**"
sudo apt install apt-transport-https curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y
sudo apt install brave-browser -y

# Install OpenSSH Host
echo "\n**Installing OpenSSH Server**"
sudo apt install openssh-server -y

# Install Git
echo "\n**Installing Git**"
sudo apt install git -y

# Install VIM
echo "\n**Installing VIM**"
sudo apt install vim -y

# OPTIONAL APPLICATIONS
echo "\n**Installing Neofetch**"
sudo apt install neofetch -y

echo "\n**Installing Bashtop**"
cd /tmp
git clone https://github.com/aristocratos/bashtop.git
cd bashtop
sudo make install