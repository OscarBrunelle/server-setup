#!/usr/bin/env bash

sudo apt update
sudo apt full-upgrade

wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/install-protonvpn.sh" | bash
wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/install-qbittorrent.sh" | bash
wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/install-jellyfin.sh" | bash
wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/install-sonarr.sh" | bash
wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/install-jackett.sh" | bash

# execute this script from the terminal:
# wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/install-all.sh" | bash
