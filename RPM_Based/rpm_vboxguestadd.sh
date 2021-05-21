#!/bin/bash
###################################################
# RPM BASED DISTROS
###################################################
# MOUNT GUEST ADDITION BEFORE EXECUTING SCRIPT


echo -e "\n\n\n"
echo -e "MAKE SURE THAT THE VIRTUALBOX GUEST ADDITIONS DISK IMAGE IS INSERTED INTO THE VM\n"
sleep 1
echo -e "MAKE SURE THAT THE VIRTUALBOX GUEST ADDITIONS DISK IMAGE IS INSERTED INTO THE VM\n"
sleep 1
echo -e "MAKE SURE THAT THE VIRTUALBOX GUEST ADDITIONS DISK IMAGE IS INSERTED INTO THE VM \n\n\n"
sleep 2

echo -e "\n\n**Updating All Software**"
sudo dnf update -y
echo -e "\n**Installing Extra Packages for Enterprise Linux**"
sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y
rpm -q epel-release
echo -e "\n**Installing Required Packages For Virtualbox Guest Additions**"
sudo dnf install gcc make perl kernel-devel kernel-headers bzip2 dkms -y

echo -e "\n**Mounting and Executing Virtualbox Guest Additions Setup Disc**"
sudo mkdir -p /mnt/vboxadd
sudo mount /dev/cdrom /mnt/vboxadd
cd /mnt/vboxadd
sudo sh ./VBoxLinuxAdditions.run --nox11

echo -e "\n\n"
echo "If successful. Reboot."