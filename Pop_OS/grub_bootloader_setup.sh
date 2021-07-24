#!/bin/bash
# Known Compatability for POP OS ONLY

echo -e "\n\n**Updating All Software**"
sudo apt update -y && sudo apt upgrade -y

echo -e "\n\n**Installing Grub**"
sudo apt install grub-efi grub2-common grub-customizer -y

echo -e "\n\n**Initializing Bootloader**"
sudo grub-install
sudo cp /boot/grub/x86-64-efi/grub.efi /boot/efi/EFI/pop/grubx64.efi

echo -e "\n\n\n\n\n** OPEN GRUB CUSTOMIZER, GO TO FILE/CHANGE ENVIRONMENT, AND CHANGE OUTPUT_FILE TO **"
echo -e "/boot/efi/EFI/pop/grubx64.efi \n"