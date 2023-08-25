#!/usr/bin/env bash
# Documentation: https://doc.ubuntu-fr.org/jellyfin

app_name="Jellyfin"
echo "##########"
echo "Installing '${app_name}'"
echo "##########"

sudo apt install apt-transport-https
sudo add-apt-repository universe
wget -O - https://repo.jellyfin.org/ubuntu/jellyfin_team.gpg.key | sudo apt-key add -
echo "deb [arch=$( dpkg --print-architecture )] https://repo.jellyfin.org/ubuntu $( lsb_release -c -s ) main" | sudo tee /etc/apt/sources.list.d/jellyfin.list
sudo apt update
sudo apt install jellyfin

echo "##########"
echo "Successfully installed '${app_name}'"
echo "##########"

wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/configure-jellyfin.sh" | bash
