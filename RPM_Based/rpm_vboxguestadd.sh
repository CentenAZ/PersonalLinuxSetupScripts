#!/bin/bash
###################################################
# RPM BASED DISTROS
###################################################
# MOUNT GUEST ADDITION BEFORE EXECUTING SCRIPT

clear
echo -e "\n\n"
echo -e "MAKE SURE THAT THE VIRTUALBOX GUEST ADDITIONS DISK IMAGE IS INSERTED INTO THE VM\n"
sleep 1
echo -e "MAKE SURE THAT THE VIRTUALBOX GUEST ADDITIONS DISK IMAGE IS INSERTED INTO THE VM\n"
sleep 1
echo -e "MAKE SURE THAT THE VIRTUALBOX GUEST ADDITIONS DISK IMAGE IS INSERTED INTO THE VM \n\n"
sleep 2

sudo dnf update -y
sudo dnf install epel-release -y
rpm -q epel-release
sudo dnf install gcc make perl kernel-devel kernel-headers bzip2 dkms -y

sudo mkdir -p /mnt/vboxadd
sudo mount /dev/cdrom /mnt/vboxadd
cd /mnt/vboxadd
sudo sh ./VBoxLinuxAdditions.run --nox11

echo ""
echo ""
echo "If successful. Reboot."