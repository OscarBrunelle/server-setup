#!/usr/bin/env bash
# execute this script from the terminal:
# cd ~/Downloads
# mkdir jellyfin_installation_files
# cd ~/Downloads/jellyfin_installation_files
# wget -O "install-all.sh" "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/install-all.sh"

echo "##########"
echo "Installing Jellyfin server's needed components"
echo "##########"

cd ~/Downloads
mkdir jellyfin_installation_files
cd ~/Downloads/jellyfin_installation_files

sudo apt update
sudo apt full-upgrade
sudo apt install net-tools

wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/install-protonvpn.sh" | bash
wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/install-qbittorrent.sh" | bash
wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/install-jellyfin.sh" | bash
wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/install-sonarr.sh" | bash
wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/install-jackett.sh" | bash

sudo rm /home/server/*.deb*
ifconfig

echo "##########"
echo "Successfully installed all Jellyfin server's needed components !"
echo "##########"
