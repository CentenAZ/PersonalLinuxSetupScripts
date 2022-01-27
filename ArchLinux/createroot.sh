#//////////////////////////////////////////////////////
#CREATING A ROOT USER IN ARCH LINUX
#//////////////////////////////////////////////////////


echo "Creating a user in Arch Linux.\nEnter the name for the user: "
read $user
pacman -S sudo --noconfirm
useradd --create-home --badname $user
echo "Set the password for the new root user:"
passwd $user
usermod --append --groups wheel $user
sed -i 's/#\ %wheel\ ALL=(ALL)\ ALL/%wheel\ ALL=(ALL)\ ALL/' /etc/sudoers