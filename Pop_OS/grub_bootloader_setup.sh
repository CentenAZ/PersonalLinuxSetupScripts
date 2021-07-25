#!/bin/bash
# Known Compatability for POP OS ONLY

echo "\n\n**Updating All Software**"
sudo apt update -y && sudo apt upgrade -y

echo "\n\n**Installing Grub**"
sudo apt install grub-efi grub2-common grub-customizer -y

echo "\n\n**Initializing Bootloader**"
sudo grub-install

echo "\n\n**Setting Up Grub**"
sudo cp /boot/grub/x86_64-efi/grub.efi /boot/efi/EFI/pop/grubx64.efi

echo "\n\n\n\n** OPEN GRUB CUSTOMIZER, GO TO FILE/CHANGE ENVIRONMENT, AND CHANGE OUTPUT_FILE TO   /boot/efi/EFI/pop/grub.cfg   AND SAVE AND APPLY **\n\n"