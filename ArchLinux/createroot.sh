#//////////////////////////////////////////////////////
#CREATING A ROOT USER IN ARCH LINUX
#//////////////////////////////////////////////////////


echo -e "\n\nCREATING A USER IN ARCH LINUX."
echo -e "\nInstalling sudo"
pacman -S sudo --noconfirm
echo "\n\nEnter the name for the user: "
read user
useradd --create-home --badnames $user
echo -e "\nSet the password for the new root user:"
passwd $user
usermod -aG wheel $user
sed -i 's/#\ %wheel\ ALL=(ALL)\ ALL/%wheel\ ALL=(ALL)\ ALL/' /etc/sudoers