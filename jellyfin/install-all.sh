#!/usr/bin/env bash

echo "##########"
echo "Installing Jellyfin server's needed components"
echo "##########"

sudo apt update
sudo apt full-upgrade
sudo apt install net-tools

wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/install-protonvpn.sh" | bash
wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/install-qbittorrent.sh" | bash
wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/install-jellyfin.sh" | bash
wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/install-sonarr.sh" | bash
wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/install-jackett.sh" | bash

ifconfig

echo "##########"
echo "Successfully installed all Jellyfin server's needed components !"
echo "##########"
# execute this script from the terminal:
# wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/install-all.sh" | bash
