#!/bin/bash

#Discord
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf update -y
sudo dnf install discord -y

#Install Jetbrains toolbox
wget https://github.com/nagygergo/jetbrains-toolbox-install/blob/master/jetbrains-toolbox.sh
chmod u+x jetbrains-toolbox.sh
./jetbrains-toolbox.sh

#ozh

sudo dnf install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Games
sudo dnf install unzip tar git curl xdelta cabextract libnotify webkit2gtk3 -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install launcher.moe com.gitlab.KRypt0n_.an-anime-game-launcher

wget https://download.opensuse.org/tumbleweed/repo/oss/x86_64/libayatana-ido3-0_4-0-0.9.2-1.2.x86_64.rpm
wget https://download.opensuse.org/tumbleweed/repo/oss/x86_64/libayatana-indicator3-7-0.9.0-1.9.x86_64.rpm
wget https://download.opensuse.org/tumbleweed/repo/oss/x86_64/libayatana-appindicator3-1-0.5.91-1.2.x86_64.rpm

sudo rpm -i libayatana-ido3-0_4-0-0.9.2-1.2.x86_64.rpm
sudo rpm -i libayatana-indicator3-7-0.9.0-1.9.x86_64.rpm
sudo rpm -i libayatana-appindicator3-1-0.5.91-1.2.x86_64.rpm

dnf copr enable atim/heroic-games-launcher
dnf install heroic-games-launcher-bin
