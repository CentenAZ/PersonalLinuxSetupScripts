# Building Custom Fedora Image
Steps for creating CentenV's custom Linux build based off of Fedora.

## Download and Install Fedora
https://fedoraproject.org/

---

## Installing/Configuring Applications
### Update the OS
```
sudo dnf update
```
### Installing GNOME
```
sudo dnf install @base-x gnome-shell gnome-terminal nautilus firefox gnome-browser-connector gnome-tweaks @development-tools
sudo systemctl set-default graphical.target
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
```
### Installing Extra Dependencies
```
sudo dnf group install "Hardware Support"
```

## OS Configuration
### Expanding the root partition
```
sudo lvextend -r -l +100%FREE /dev/mapper/fedora*
```
### Installing/Setting Up zsh
```
sudo dnf install zsh util-linux-user
sudo chsh -s $(which zsh) $()
mkdir ~/.zsh
cp ~/.zshrc ~/.zshrc.bak
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
#### Zsh Extensions
```
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" | tee -a ~/.zshrc
```

## Miscellaneous
### Install GNOME Extensions
#### Install the GNOME browser extension
Chrome/Brave: https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep
#### Extensions:
- https://extensions.gnome.org/extension/3088/extension-list/
- https://extensions.gnome.org/extension/3193/blur-my-shell/
- https://extensions.gnome.org/extension/307/dash-to-dock/
- https://extensions.gnome.org/extension/1460/vitals/
### Install Brave
```
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser
```