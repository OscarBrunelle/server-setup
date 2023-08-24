#!/usr/bin/env bash
# Web server url: http://localhost:8096/web/index.html

app_name="Jellyfin"
echo "Configuring '${app_name}'"

# if the server webpage shows nothing

sudo ln -s /usr/share/jellyfin/web/ /usr/lib/jellyfin/bin/jellyfin-web
sudo apt purge jellyfin-web
sudo apt update
sudo apt install jellyfin-web
sudo systemctl restart jellyfin.services

echo "Successfully configured '${app_name}'"
