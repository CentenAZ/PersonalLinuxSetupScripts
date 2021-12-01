#!/bin/bash
# CREATING USER THAT CAN SUDO 

# User Variable (the default is "default", change this for a different name of user)
USR=default

echo ""
echo ""
echo "Root only. Sudo is not installed and cannot be used"
echo ""

pacman -S sudo
