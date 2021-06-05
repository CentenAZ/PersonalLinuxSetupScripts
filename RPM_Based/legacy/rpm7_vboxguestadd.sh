#!/bin/bash
# Known Compatability for CentOS 7

echo -e "\n\n\n"
echo -e "MAKE SURE THAT THE VIRTUALBOX GUEST ADDITIONS DISK IMAGE IS INSERTED INTO THE VM\n"
sleep 1
echo -e "MAKE SURE THAT THE VIRTUALBOX GUEST ADDITIONS DISK IMAGE IS INSERTED INTO THE VM\n"
sleep 1
echo -e "MAKE SURE THAT THE VIRTUALBOX GUEST ADDITIONS DISK IMAGE IS INSERTED INTO THE VM \n\n\n"
sleep 2

sudo yum install epel-release
sudo yum install gcc make perl kernel-devel kernel-headers bzip2 dkms -y

echo -e "\n**Mounting and Executing Virtualbox Guest Additions Setup Disc**"
sudo mkdir -p /mnt/vboxadd
sudo mount /dev/cdrom /mnt/vboxadd
cd /mnt/vboxadd
sudo sh ./VBoxLinuxAdditions.run --nox11

echo -e "\n\n"
echo "If successful. Reboot."