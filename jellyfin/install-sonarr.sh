#!/usr/bin/env bash

app_name="Sonarr"
echo "Installing '${app_name}'"

wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/install-mono.sh" | bash
wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/install-mediainfo.sh" | bash

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 2009837CBFFD68F45BC180471F4F90DE2A9B4BF8
echo "deb https://apt.sonarr.tv/debian buster main" | sudo tee /etc/apt/sources.list.d/sonarr.list
sudo apt update
sudo apt install sonarr

echo "Successfully installed '${app_name}'"
